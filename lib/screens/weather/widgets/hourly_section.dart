import 'package:flutter/material.dart';
import 'package:weather/extensions/datetime.dart';
import 'package:weather/models/hourly/hourly.dart';
import 'package:weather/models/hourly_property.dart';
import 'package:weather/models/hourly_units/hourly_units.dart';
import 'package:weather/utilities/ui_template.dart';
import 'package:weather/utilities/weather_helper.dart';

class HourlySection extends StatelessWidget {
  final Hourly hourly;
  final HourlyUnits hourlyUnits;

  const HourlySection({
    super.key,
    required this.hourly,
    required this.hourlyUnits,
  });

  Widget _hourlyEntry(HourlyProperty property) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Text(
              property.time.toHourlyFormat(),
              style: TextStyleSpec.normalSmallLight,
            ),
            WeatherHelper.emojiForWeatherCode(
              code: property.weatherCode,
              isDay: property.isDay,
              nonZeroPrecipitationProbability:
                  property.precipitationProbability > 0,
            ),
            if (property.precipitationProbability > 0)
              Text(
                '${property.precipitationProbability.round()}${property.precipitationProbabilityUnit}',
                style: TextStyleSpec.normalSmallLight,
              ),
            Text(
              '${property.temperature.round()}${property.temperatureUnit}',
              style: TextStyleSpec.normalSmallLight,
            ),
          ],
        ),
      );

  Widget _body() => SizedBox(
        height: 100,
        child: ListView.separated(
          padding: const EdgeInsets.only(left: 15),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          scrollDirection: Axis.horizontal,
          itemCount: hourly.time!.length,
          itemBuilder: (context, index) {
            final property = HourlyProperty(
              time: hourly.time![index].toLocal(),
              temperature: hourly.temperature![index],
              precipitationProbability: hourly.precipitationProbability![index],
              isDay: hourly.isDay![index] == 1,
              weatherCode: hourly.weatherCode![index],
              temperatureUnit: hourlyUnits.temperature!,
              precipitationProbabilityUnit:
                  hourlyUnits.precipitationProbability!,
            );
            return _hourlyEntry(property);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return hourly.time != null && hourly.time!.isNotEmpty
        ? _body()
        : Container();
  }
}
