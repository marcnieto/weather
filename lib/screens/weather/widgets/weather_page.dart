import 'package:flutter/material.dart';
import 'package:weather/models/current/current.dart';
import 'package:weather/models/current_units/current_units.dart';
import 'package:weather/models/forecast/forecast.dart';
import 'package:weather/models/location.dart';
import 'package:weather/screens/weather/widgets/hourly_section.dart';
import 'package:weather/utilities/ui_template.dart';

class WeatherPage extends StatelessWidget {
  final Forecast forecast;

  const WeatherPage({
    super.key,
    required this.forecast,
  });

  String _textForCloudData(double cloudCover) {
    if (cloudCover <= 5.0) {
      return 'Clear';
    } else if (cloudCover > 5.0 && cloudCover < 20.0) {
      return 'Mostly Clear';
    } else if (cloudCover >= 20.0 && cloudCover < 50.0) {
      return 'Partly Cloudy';
    } else {
      return 'Mostly Cloudy';
    }
  }

  String _textForWindDirection(double windDirection) {
    if (windDirection < 90.0) {
      return 'NE';
    } else if (windDirection == 90.0) {
      return 'E';
    } else if (windDirection > 90.0 && windDirection < 180.0) {
      return 'SE';
    } else if (windDirection == 180.0) {
      return 'S';
    } else if (windDirection > 180.0 && windDirection < 270.0) {
      return 'SW';
    } else if (windDirection == 270.0) {
      return 'W';
    } else {
      return 'NW';
    }
  }

  Widget _current(
    Current current,
    CurrentUnits units,
    Location location,
  ) =>
      FutureBuilder<String?>(
        future: location.getCityName(),
        builder: (context, snapshot) {
          return Column(
            children: [
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
              if (current.cloudCover != null)
                Text(
                  _textForCloudData(current.cloudCover!),
                  style: TextStyleSpec.normalLargeLight,
                ),
              if (current.windSpeed != null && current.direction != null)
                Text(
                  '${current.windSpeed?.round()}${units.windSpeed} Wind ${_textForWindDirection(current.direction!)} ',
                  style: TextStyleSpec.normalLargeLight,
                ),
            ],
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const SizedBox(height: 100),
              if (forecast.current != null)
                _current(
                  forecast.current!,
                  forecast.currentUnits!,
                  Location(
                    latitude: forecast.latitude,
                    longitude: forecast.longitude,
                  ),
                ),
              if (forecast.hourly != null)
                HourlySection(
                  hourly: forecast.hourly!,
                  hourlyUnits: forecast.hourlyUnits!,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
