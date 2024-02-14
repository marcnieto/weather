abstract class CurrentWeatherKeys {
  static const temperature = 'temperature_2m';
  static const apparentTemperature = 'apparent_temperature';
  static const relativeHumidity = 'relative_humidity_2m';
  static const cloudCover = 'cloud_cover';
  static const precipitation = 'precipitation';
  static const rain = 'rain';
  static const showers = 'showers';
  static const snowfall = 'snowfall';
  static const windSpeed = 'wind_speed_10m';
  static const windDirection = 'wind_direction_10m';
}

abstract class HourlyWeatherKeys {
  static const temperature = 'temperature_2m';
  static const cloudCover = 'cloud_cover';
  static const precipitationProbability = 'precipitation_probability';
}

abstract class DailyWeatherKeys {
  static const temperatureMax = 'temperature_2m_max';
  static const temperatureMin = 'temperature_2m_min';
  static const sunrise = 'sunrise';
  static const sunset = 'sunset';
  static const precipitationProbabilityMax = 'precipitation_probability_max';
}

abstract class TemperatureUnits {
  static const celcius = 'celcius';
  static const fahrenheit = 'fahrenheit';
}

abstract class WindSpeedUnits {
  static const kilometersPerHour = null; // default
  static const milesPerHour = 'mph';
  static const metersPerSecond = 'ms';
  static const knots = 'kn';
}

abstract class TimeFormat {
  static const iso8601 = null; // default
  static const unixTime = 'unixtime';
}
