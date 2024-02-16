import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/repositories/location/location_repository.dart';
import 'package:weather/user/user_preferences.dart';
import 'package:weather/utilities/ui_template.dart';
import 'package:weather/utilities/weather_keys.dart';
import 'package:weather/widgets/rounded_text_button.dart';

// ignore_for_file: use_build_context_synchronously
class SettingsScreen extends StatefulWidget {
  final UserPreferences preferences;

  const SettingsScreen({
    super.key,
    required this.preferences,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late bool _showHourlyForecast;
  late bool _showDailyForecast;
  late int _forecastDays;
  late String _temperatureUnit;

  bool _showLocationServices = false;

  Widget _locationServicesSetting(BuildContext context) => RoundedTextButton(
        onPressed: () async {
          final locationRepository = context.read<LocationRepository>();
          final granted = await locationRepository.requestPermission();
          if (granted) {
            final location = await locationRepository.getCurrentLocation();
            context.read<UserPreferences>().setCurrentLocation(location);
          }
          setState(() {
            _showLocationServices = !granted;
          });
        },
        text: 'Enable Location Services',
        foregroundColor: Colors.white,
        backgroundColor: ColorSpec.skyBlue,
        height: 40,
      );

  Widget _setting({
    required String title,
    required Widget trailing,
  }) =>
      Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: PaddingSpec.medium),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyleSpec.boldMediumDark,
            ),
            const Spacer(),
            trailing
          ],
        ),
      );

  Widget _body(
    BuildContext context, {
    required UserPreferences preferences,
  }) =>
      Column(
        children: [
          _setting(
            title: 'Show Hourly Forecast',
            trailing: Switch(
              value: _showHourlyForecast,
              activeColor: ColorSpec.skyBlue,
              onChanged: (value) {
                context.read<UserPreferences>().setShowHourlyForecast(value);
                setState(() {
                  _showHourlyForecast = value;
                });
              },
            ),
          ),
          _setting(
            title: 'Show Daily Forecast',
            trailing: Switch(
              value: _showDailyForecast,
              activeColor: ColorSpec.skyBlue,
              onChanged: (value) {
                context.read<UserPreferences>().setShowDailyForecast(value);
                setState(() {
                  _showDailyForecast = value;
                });
              },
            ),
          ),
          _setting(
            title: 'Forecast Days',
            trailing: CupertinoSlidingSegmentedControl<int>(
              groupValue: _forecastDays,
              thumbColor: ColorSpec.skyBlue,
              children: const {
                3: Text('3'),
                7: Text('7'),
                14: Text('14'),
              },
              onValueChanged: (value) {
                if (value == null) return;
                context.read<UserPreferences>().setForecastDays(value);
                setState(() {
                  _forecastDays = value;
                });
              },
            ),
          ),
          _setting(
            title: 'Temperature Unit',
            trailing: CupertinoSlidingSegmentedControl<String>(
              groupValue: _temperatureUnit,
              thumbColor: ColorSpec.skyBlue,
              children: const {
                TemperatureUnits.celcius: Text('°C'),
                TemperatureUnits.fahrenheit: Text('°F'),
              },
              onValueChanged: (value) {
                if (value == null) return;
                context.read<UserPreferences>().setTemperatureUnit(value);
                setState(() {
                  _temperatureUnit = value;
                });
              },
            ),
          ),
          const SizedBox(height: PaddingSpec.medium),
          if (_showLocationServices) ...[
            const Text(
              'To fetch weather data from your area, please consider enabling location services.',
              style: TextStyleSpec.normalMediumDark,
            ),
            _locationServicesSetting(context),
          ],
        ],
      );

  PreferredSizeWidget _appBar() => AppBar(
        title: const Text(
          'User Preferences',
          style: TextStyleSpec.boldLargeLight,
        ),
        centerTitle: true,
        backgroundColor: ColorSpec.skyBlue,
        foregroundColor: Colors.white,
      );

  @override
  void initState() {
    super.initState();

    _showHourlyForecast = widget.preferences.showHourlyForecast;
    _showDailyForecast = widget.preferences.showDailyForecast;
    _forecastDays = widget.preferences.forecastDays;
    _temperatureUnit = widget.preferences.temperatureUnit;
    _showLocationServices = widget.preferences.currentLocation == null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(),
        body: Container(
          color: Colors.white,
          child: _body(
            context,
            preferences: widget.preferences,
          ),
        ),
      ),
    );
  }
}
