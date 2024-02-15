import 'package:flutter/material.dart';
import 'package:weather/extensions/datetime.dart';
import 'package:weather/models/daily/daily.dart';
import 'package:weather/models/daily_property.dart';
import 'package:weather/models/daily_units/daily_units.dart';

import 'package:weather/utilities/ui_template.dart';
import 'package:weather/utilities/weather_helper.dart';

class DailySection extends StatelessWidget {
  final Daily daily;
  final DailyUnits dailyUnits;

  const DailySection({
    super.key,
    required this.daily,
    required this.dailyUnits,
  });

  Widget _dailyEntry(DailyProperty property) => ListTile(
        leading: SizedBox(
          width: 50,
          child: Text(
            property.time.toDailyFormat(),
            style: TextStyleSpec.normalSmallLight,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WeatherHelper.emojiForWeatherCode(
              code: property.weatherCode,
              isDay: true,
              nonZeroPrecipitationProbability:
                  property.precipitationProbability > 0,
            ),
            if (property.precipitationProbability > 0)
              Text(
                '${property.precipitationProbability.round()}${property.precipitationProbabilityUnit}',
                style: TextStyleSpec.normalSmallLight,
              ),
          ],
        ),
        trailing: Text(
          'H: ${property.temperatureMax.round()}${property.temperatureUnit} L: ${property.temperatureMin.round()}${property.temperatureUnit}',
          style: TextStyleSpec.normalSmallLight,
        ),
      );

  Widget _listView() => ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(bottom: PaddingSpec.small),
        itemCount: daily.time!.length,
        itemBuilder: (context, index) {
          final property = DailyProperty(
            time: daily.time![index],
            temperatureMax: daily.temperatureMax![index],
            temperatureMin: daily.temperatureMin![index],
            precipitationProbability: daily.precipitationProbabilityMax![index],
            weatherCode: daily.weatherCode![index],
            temperatureUnit: dailyUnits.temperatureMax!,
            precipitationProbabilityUnit:
                dailyUnits.precipitationProbabilityMax!,
          );
          return _dailyEntry(property);
        },
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
                'DAILY',
                style: TextStyleSpec.boldLargeLight,
              ),
            ),
            _listView(),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return daily.time != null && daily.time!.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: PaddingSpec.medium,
            ),
            child: _body(),
          )
        : Container();
  }
}
