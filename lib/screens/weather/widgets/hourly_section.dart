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
              style: TextStyleSpec.boldMediumLight,
            ),
            const Spacer(),
            WeatherHelper.emojiForWeatherCode(
              code: property.weatherCode,
              isDay: property.isDay,
              nonZeroPrecipitationProbability:
                  property.precipitationProbability > 0,
            ),
            if (property.precipitationProbability > 0)
              Text(
                '${property.precipitationProbability.round()}${property.precipitationProbabilityUnit}',
                style: TextStyleSpec.boldSmallLight.copyWith(
                  color: ColorSpec.darkBlue,
                ),
              ),
            const Spacer(),
            Text(
              '${property.temperature.round()}${property.temperatureUnit}',
              style: TextStyleSpec.boldMediumLight,
            ),
          ],
        ),
      );

  Widget _listView() => SizedBox(
        height: 90,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: PaddingSpec.small),
          separatorBuilder: (context, index) =>
              const SizedBox(width: PaddingSpec.small),
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

  Widget _body() => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              CornerRadiusSpec.large,
            ),
            color: Colors.white.withOpacity(0.2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: PaddingSpec.medium,
                top: PaddingSpec.medium,
              ),
              child: Text(
                'HOURLY',
                style: TextStyleSpec.boldLargeLight,
              ),
            ),
            const SizedBox(height: PaddingSpec.small),
            _listView(),
            const SizedBox(height: PaddingSpec.medium),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    final isHourlyDataValid = WeatherHelper.checkValidHourlyData(
      hourly: hourly,
      units: hourlyUnits,
    );

    return isHourlyDataValid
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: PaddingSpec.medium),
            child: _body(),
          )
        : Container();
  }
}
