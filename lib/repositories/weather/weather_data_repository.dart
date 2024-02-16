import 'package:weather/clients/open_meteo_api/open_meteo_api_client.dart';
import 'package:weather/repositories/weather/weather_repository.dart';
import 'package:weather/models/forecast/forecast.dart';
import 'package:weather/utilities/weather_keys.dart';

const int kForecastHours = 12;

class WeatherDataRepository implements WeatherRepository {
  final OpenMeteoAPIClient apiClient;

  WeatherDataRepository({required this.apiClient});

  @override
  Future<Forecast> getForecast({
    required double latitude,
    required double longitude,
    String? temperatureUnit,
    int? forecastDays,
    int forecastHours = kForecastHours,
    List<String>? currentWeatherProperties,
    List<String>? dailyWeatherProperties,
    List<String>? hourlyWeatherProperties,
  }) {
    return apiClient.getForecast(
      latitude: latitude,
      longitude: longitude,
      temperatureUnit: temperatureUnit,
      windSpeedUnit: WindSpeedUnits.milesPerHour,
      forecastDays: forecastDays,
      forecastHours: kForecastHours,
      current: currentWeatherProperties,
      daily: dailyWeatherProperties,
      hourly: hourlyWeatherProperties,
    );
  }
}
