import 'package:flutter/material.dart';
import 'package:weather/models/forecast/forecast.dart';
import 'package:weather/models/location/location.dart';
import 'package:weather/screens/weather/widgets/current_section.dart';
import 'package:weather/screens/weather/widgets/daily_section.dart';
import 'package:weather/screens/weather/widgets/hourly_section.dart';
import 'package:weather/utilities/ui_template.dart';

const double kVerticalPadding = 100.0;

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
              const SizedBox(height: kVerticalPadding),
              if (forecast.current != null)
                CurrentSection(
                  current: forecast.current!,
                  currentUnits: forecast.currentUnits!,
                  location: Location(
                    latitude: forecast.latitude,
                    longitude: forecast.longitude,
                  ),
                ),
              const SizedBox(height: PaddingSpec.large),
              if (forecast.hourly != null) ...[
                HourlySection(
                  hourly: forecast.hourly!,
                  hourlyUnits: forecast.hourlyUnits!,
                ),
                const SizedBox(height: PaddingSpec.large),
              ],
              if (forecast.daily != null)
                DailySection(
                  daily: forecast.daily!,
                  dailyUnits: forecast.dailyUnits!,
                ),
              const SizedBox(height: kVerticalPadding)
            ],
          ),
        ),
      ],
    );
  }
}
