import 'package:weather/models/forecast/forecast.dart';

abstract class WeatherRepository {
  Future<Forecast> getForecast({
    required double latitude,
    required double longitude,
    String temperatureUnit,
    int? forecastDays,
    List<String>? currentWeatherProperties,
    List<String>? dailyWeatherProperties,
    List<String>? hourlyWeatherProperties,
  });
}
