import 'package:flutter/material.dart';
import 'package:weather/models/daily/daily.dart';
import 'package:weather/models/daily_units/daily_units.dart';
import 'package:weather/models/hourly/hourly.dart';
import 'package:weather/models/hourly_units/hourly_units.dart';
import 'package:weather/utilities/ui_template.dart';

abstract class WeatherHelper {
  static String textForWeatherCode(int code) {
    switch (code) {
      case 0:
        return 'Clear skies';
      case 1:
        return 'Mainly clear';
      case 2:
        return 'Partly cloudy';
      case 3:
        return 'Overcast';
      case 45:
        return 'Fog';
      case 48:
        return 'Depositing rime fog';
      case 51:
        return 'Light drizzle';
      case 53:
        return 'Moderate drizzle';
      case 55:
        return 'Dense drizzle';
      case 56:
        return 'Light freezing drizzle';
      case 57:
        return 'Dense freezing drizzle';
      case 61:
        return 'Light rain';
      case 63:
        return 'Moderate rain';
      case 65:
        return 'Heavy rain';
      case 66:
        return 'Light freezing rain';
      case 67:
        return 'Heavy freezing rain';
      case 71:
        return 'Light snowfall';
      case 73:
        return 'Moderate snowfall';
      case 75:
        return 'Heavy snowfall';
      case 77:
        return 'Snow grains';
      case 80:
        return 'Light rain showers';
      case 81:
        return 'Moderate rain showers';
      case 82:
        return 'Violent rain showers';
      case 85:
        return 'Light snow showers';
      case 86:
        return 'Heavy snow showers';
      case 95:
        return 'Thunderstorms';
      case 96:
        return 'Thunderstorm with light hail';
      case 99:
        return 'Thunderstorm with heavy hail';
      default:
        return '';
    }
  }

  static Widget emojiForWeatherCode({
    required int code,
    required bool isDay,
    bool nonZeroPrecipitationProbability = false,
  }) {
    final timeIcon = isDay
        ? const Icon(
            Icons.sunny,
            color: Colors.yellow,
          )
        : const Icon(
            Icons.mode_night,
            color: ColorSpec.moonYellow,
          );

    const cloudIcon = Icon(
      Icons.cloud,
      color: Colors.white,
    );

    const rainIcon = Icon(
      Icons.cloudy_snowing,
      color: Colors.white,
    );

    const snowIcon = Icon(
      Icons.snowing,
      color: Colors.white,
    );

    const thunderIcon = Icon(
      Icons.thunderstorm,
      color: Colors.white,
    );

    const fogIcon = Icon(
      Icons.foggy,
      color: Colors.white,
    );

    final partlyCloudyIcon = Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: PaddingSpec.small),
          child: timeIcon,
        ),
        const Padding(
          padding: EdgeInsets.only(right: PaddingSpec.small),
          child: cloudIcon,
        ),
      ],
    );

    if (nonZeroPrecipitationProbability) {
      return rainIcon;
    }

    switch (code) {
      case 0:
        return timeIcon;
      case 1:
        return timeIcon;
      case 2:
        return partlyCloudyIcon;
      case 3:
        return cloudIcon;
      case 45:
        return fogIcon;
      case 48:
        return fogIcon;
      case 51:
        return rainIcon;
      case 53:
        return rainIcon;
      case 55:
        return rainIcon;
      case 56:
        return rainIcon;
      case 57:
        return rainIcon;
      case 61:
        return rainIcon;
      case 63:
        return rainIcon;
      case 65:
        return rainIcon;
      case 66:
        return rainIcon;
      case 67:
        return rainIcon;
      case 71:
        return snowIcon;
      case 73:
        return snowIcon;
      case 75:
        return snowIcon;
      case 77:
        return snowIcon;
      case 80:
        return rainIcon;
      case 81:
        return rainIcon;
      case 82:
        return rainIcon;
      case 85:
        return snowIcon;
      case 86:
        return snowIcon;
      case 95:
        return thunderIcon;
      case 96:
        return thunderIcon;
      case 99:
        return thunderIcon;
      default:
        return Container();
    }
  }

  static String textForWindDirection(double windDirection) {
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

  static bool checkValidHourlyData({
    required Hourly hourly,
    required HourlyUnits units,
  }) {
    // check all not null
    bool notNull = hourly.time != null &&
        hourly.temperature != null &&
        hourly.isDay != null &&
        hourly.weatherCode != null &&
        hourly.precipitationProbability != null &&
        units.temperature != null &&
        units.precipitationProbability != null;

    if (notNull == false) return false;

    // check all not empty
    bool notEmpty = hourly.time!.isNotEmpty &&
        hourly.temperature!.isNotEmpty &&
        hourly.isDay!.isNotEmpty &&
        hourly.weatherCode!.isNotEmpty &&
        hourly.precipitationProbability!.isNotEmpty;

    if (notEmpty == false) return false;

    // check all the same size
    final size = hourly.time!.length;
    bool sameSize = hourly.time!.length == size &&
        hourly.temperature!.length == size &&
        hourly.isDay!.length == size &&
        hourly.weatherCode!.length == size &&
        hourly.precipitationProbability!.length == size;

    if (sameSize == false) return false;

    return true;
  }

  static bool checkValidDailyData({
    required Daily daily,
    required DailyUnits units,
  }) {
    // check all not null
    bool notNull = daily.time != null &&
        daily.temperatureMax != null &&
        daily.temperatureMin != null &&
        daily.weatherCode != null &&
        daily.precipitationProbabilityMax != null &&
        units.temperatureMax != null &&
        units.temperatureMin != null &&
        units.precipitationProbabilityMax != null;

    if (notNull == false) return false;

    // check all not empty
    bool notEmpty = daily.time!.isNotEmpty &&
        daily.temperatureMax!.isNotEmpty &&
        daily.temperatureMin!.isNotEmpty &&
        daily.weatherCode!.isNotEmpty &&
        daily.precipitationProbabilityMax!.isNotEmpty;

    if (notEmpty == false) return false;

    // check all the same size
    final size = daily.time!.length;
    bool sameSize = daily.temperatureMax!.length == size &&
        daily.temperatureMin!.length == size &&
        daily.weatherCode!.length == size &&
        daily.precipitationProbabilityMax!.length == size;

    if (sameSize == false) return false;

    return true;
  }
}
