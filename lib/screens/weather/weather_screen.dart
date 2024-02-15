import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/blocs/weather/weather_bloc.dart';
import 'package:weather/models/location.dart';
import 'package:weather/repositories/location/location_repository.dart';
import 'package:weather/screens/weather/widgets/loading_page.dart';
import 'package:weather/screens/weather/widgets/reload_page.dart';
import 'package:weather/screens/weather/widgets/weather_initial_page.dart';
import 'package:weather/screens/weather/widgets/weather_page.dart';
import 'package:weather/screens/weather/widgets/weather_page_view.dart';
import 'package:weather/user/user_preferences.dart';
import 'package:weather/utilities/ui_template.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

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
    context.read<UserPreferences>().currentLocation = location;
    _loadForecast(context);
  }

  Widget _weatherBlocBuilder(BuildContext context) =>
      BlocBuilder<WeatherBloc, WeatherState>(
        bloc: context.read<WeatherBloc>(),
        builder: (context, state) => state.maybeMap(
          initial: (_) => WeatherInitialPage(
            onEnableLocationPressed: () => _requestLocationServices(context),
          ),
          error: (value) => ReloadPage(
            onPressed: () => _loadForecast(context),
          ),
          loading: (value) => const LoadingPage(),
          loaded: (value) => WeatherPageView(
            itemCount: value.forecasts.length,
            builder: (context, index) => WeatherPage(
              forecast: value.forecasts[index],
            ),
          ),
          orElse: () => const WeatherInitialPage(),
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
