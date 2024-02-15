import 'package:flutter/material.dart';
import 'package:weather/models/forecast/forecast.dart';
import 'package:weather/models/location.dart';
import 'package:weather/screens/weather/widgets/current_section.dart';
import 'package:weather/screens/weather/widgets/daily_section.dart';
import 'package:weather/screens/weather/widgets/hourly_section.dart';

class WeatherPage extends StatelessWidget {
  final Forecast forecast;

  const WeatherPage({
    super.key,
    required this.forecast,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const SizedBox(height: 100),
              if (forecast.current != null)
                CurrentSection(
                  current: forecast.current!,
                  currentUnits: forecast.currentUnits!,
                  location: Location(
                    latitude: forecast.latitude,
                    longitude: forecast.longitude,
                  ),
                ),
              if (forecast.hourly != null)
                HourlySection(
                  hourly: forecast.hourly!,
                  hourlyUnits: forecast.hourlyUnits!,
                ),
              if (forecast.daily != null)
                DailySection(
                  daily: forecast.daily!,
                  dailyUnits: forecast.dailyUnits!,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
