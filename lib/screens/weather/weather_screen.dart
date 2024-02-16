import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weather/blocs/weather/weather_bloc.dart';
import 'package:weather/models/location/location.dart';
import 'package:weather/repositories/location/location_repository.dart';
import 'package:weather/screens/settings/settings_screen.dart';
import 'package:weather/screens/weather/widgets/loading_page.dart';
import 'package:weather/screens/weather/widgets/reload_page.dart';
import 'package:weather/screens/weather/widgets/weather_initial_page.dart';
import 'package:weather/screens/weather/widgets/weather_page.dart';
import 'package:weather/screens/weather/widgets/weather_page_view.dart';
import 'package:weather/user/user_preferences.dart';
import 'package:weather/utilities/ui_template.dart';
import 'package:weather/widgets/button.dart';

class WeatherScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  WeatherScreen({super.key});

  void _requestLocationServices(BuildContext context) {
    context.read<WeatherBloc>().add(
          const WeatherEvent.requestLocationServices(),
        );
  }

  void _loadForecast(BuildContext context) {
    final preferences = context.read<UserPreferences>();
    context.read<WeatherBloc>().add(
          WeatherEvent.load(preferences: preferences),
        );
  }

  void _setCurrentLocationAndLoad(
    BuildContext context, {
    required Location location,
  }) async {
    context.read<UserPreferences>().setCurrentLocation(location);
    _loadForecast(context);
  }

  Future<void> _pushSettingsScreen(BuildContext context) async {
    final preferences = context.read<UserPreferences>();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsScreen(
          preferences: preferences,
        ),
      ),
    ).then(
      (_) => _loadForecast(context),
    );
  }

  Future<void> _presentAddLocationAlert(BuildContext context) async {
    double? latitude;
    double? longitude;

    showDialog<Location?>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Location'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: TextField(
                decoration: const InputDecoration.collapsed(
                  hintText: 'Latitude',
                ).copyWith(
                  contentPadding: const EdgeInsets.only(top: 6, left: 12),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) => latitude = double.tryParse(value),
              ),
            ),
            const SizedBox(height: PaddingSpec.small),
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: TextField(
                decoration: const InputDecoration.collapsed(
                  hintText: 'Longitude',
                ).copyWith(
                  contentPadding: const EdgeInsets.only(top: 6, left: 12),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) => longitude = double.tryParse(value),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, null),
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.red),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(
                context,
                latitude != null && longitude != null
                    ? Location(
                        latitude: latitude!,
                        longitude: longitude!,
                      )
                    : null),
            child: const Text(
              'Add',
              style: TextStyle(color: ColorSpec.skyBlue),
            ),
          ),
        ],
      ),
    ).then(
      (location) {
        if (location == null) return;

        context.read<UserPreferences>().addLocation(location);

        _loadForecast(context);
      },
    );
  }

  Future<void> _deleteLocation(BuildContext context) async {
    final preferences = context.read<UserPreferences>();

    if (preferences.currentLocation == null && preferences.locations.isEmpty) {
      return;
    }

    if (_pageController.page == 0) return;

    showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Location'),
        content: const Text(
          'Do you want to delete this location?',
          style: TextStyleSpec.normalMediumDark,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text(
              'Cancel',
              style: TextStyle(color: ColorSpec.skyBlue),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text(
              'Delete',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    ).then(
      (willDelete) {
        if (willDelete != true) return;

        final index = _pageController.page;
        if (index == null) return;

        // page and user custom locations index are offset by 1
        context
            .read<UserPreferences>()
            .removeLocationAt(index: index.floor() - 1);

        _loadForecast(context);
      },
    );
  }

  Widget _tabBarBuilder(
    BuildContext context, {
    required Widget Function(BuildContext) builder,
    int count = 0,
  }) =>
      Stack(
        alignment: Alignment.bottomCenter,
        children: [
          builder(context),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: PaddingSpec.medium),
            height: 60,
            color: ColorSpec.skyBlue.withOpacity(MicroDimensionSpec.large),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  onPressed: () => _presentAddLocationAlert(context),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: MediumSizeSpec.extraLarge,
                  ),
                ),
                const SizedBox(width: PaddingSpec.extraSmall),
                Button(
                  onPressed: () => _deleteLocation(context),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: MediumSizeSpec.extraLarge,
                  ),
                ),
                const Spacer(),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: count,
                  effect: WormEffect(
                    dotHeight: SmallSizeSpec.large,
                    dotWidth: SmallSizeSpec.large,
                    spacing: PaddingSpec.extraSmall,
                    dotColor:
                        Colors.white.withOpacity(MicroDimensionSpec.small),
                    activeDotColor: Colors.white,
                    type: WormType.thinUnderground,
                  ),
                ),
                const Spacer(),
                const SizedBox(
                  width: MediumSizeSpec.extraLarge + PaddingSpec.extraSmall,
                ),
                Button(
                  onPressed: () => _pushSettingsScreen(context),
                  child: const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: MediumSizeSpec.large,
                  ),
                ),
              ],
            ),
          )
        ],
      );

  Widget _weatherBlocBuilder(BuildContext context) =>
      BlocBuilder<WeatherBloc, WeatherState>(
        bloc: context.read<WeatherBloc>(),
        builder: (context, state) => state.maybeMap(
          initial: (_) => _tabBarBuilder(
            context,
            builder: (context) {
              return WeatherInitialPage(
                onEnableLocationPressed: () =>
                    _requestLocationServices(context),
              );
            },
          ),
          error: (value) => ReloadPage(
            onPressed: () => _loadForecast(context),
          ),
          loading: (value) => const LoadingPage(),
          loaded: (value) => _tabBarBuilder(
            context,
            count: value.forecasts.length,
            builder: (context) => WeatherPageView(
              controller: _pageController,
              itemCount: value.forecasts.length,
              builder: (context, index) => WeatherPage(
                forecast: value.forecasts[index],
              ),
            ),
          ),
          orElse: () => _tabBarBuilder(
            context,
            builder: (context) => const WeatherInitialPage(),
          ),
        ),
      );

  Widget _weatherBlocListener(BuildContext context) =>
      BlocListener<WeatherBloc, WeatherState>(
        listenWhen: (previous, current) {
          if (previous is WeatherStateInitial &&
              current is WeatherStateInitial) {
            return previous.locationServicesEnabled !=
                current.locationServicesEnabled;
          }
          return false;
        },
        listener: (context, state) {
          if (state is WeatherStateInitial && state.locationServicesEnabled) {
            context
                .read<LocationRepository>()
                .getCurrentLocation()
                .then((location) => _setCurrentLocationAndLoad(
                      context,
                      location: location,
                    ));
          }
        },
        child: _weatherBlocBuilder(context),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorSpec.skyBlue,
        child: _weatherBlocListener(context),
      ),
    );
  }
}
