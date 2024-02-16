import 'package:flutter/material.dart';
import 'package:weather/models/current/current.dart';
import 'package:weather/models/current_units/current_units.dart';
import 'package:weather/models/location.dart';
import 'package:weather/utilities/ui_template.dart';
import 'package:weather/utilities/weather_helper.dart';

class CurrentSection extends StatelessWidget {
  final Current current;
  final CurrentUnits currentUnits;
  final Location location;

  const CurrentSection({
    super.key,
    required this.current,
    required this.currentUnits,
    required this.location,
  });

  Widget _body(
    Current current,
    CurrentUnits units,
    Location location,
  ) =>
      FutureBuilder<String?>(
        future: location.getCityName(),
        builder: (context, snapshot) {
          return Column(
            children: [
              if (snapshot.data == null) ...[
                const Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '(${location.latitude}, ${location.longitude})',
                  style: TextStyleSpec.normalSmallLight,
                ),
              ],
              if (snapshot.data != null)
                Text(
                  snapshot.data!,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              if (current.temperature != null)
                Text(
                  '${current.temperature!.round()}${units.temperature!}',
                  style: const TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  ),
                ),
              if (current.weatherCode != null) ...[
                WeatherHelper.emojiForWeatherCode(
                  code: current.weatherCode!,
                  isDay: current.isDay == 1,
                ),
                Text(
                  WeatherHelper.textForWeatherCode(current.weatherCode!),
                  style: TextStyleSpec.normalLargeLight,
                ),
              ],
              if (current.windSpeed != null && current.direction != null)
                Text(
                  '${current.windSpeed?.round()}${units.windSpeed} Wind ${WeatherHelper.textForWindDirection(current.direction!)} ',
                  style: TextStyleSpec.normalLargeLight,
                ),
              if (current.humidity != null)
                Text(
                  '${current.humidity?.round()}${units.humidity} Humidity',
                  style: TextStyleSpec.normalLargeLight,
                ),
            ],
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return _body(
      current,
      currentUnits,
      location,
    );
  }
}
