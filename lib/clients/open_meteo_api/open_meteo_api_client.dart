import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather/models/forecast/forecast.dart';

part 'open_meteo_api_client.g.dart';

@RestApi()
abstract class OpenMeteoAPIClient {
  factory OpenMeteoAPIClient(
    Dio dio, {
    String baseUrl,
  }) = _OpenMeteoAPIClient;

  @GET('/forecast')
  Future<Forecast> getForecast({
    @Query("latitude") required double latitude,
    @Query("longitude") required double longitude,
    @Query('temperature_unit') String? temperatureUnit,
    @Query('wind_speed_unit') String? windSpeedUnit,
    @Query('forecast_days') int? forecastDays,
    @Query('current') List<String>? current,
    @Query('hourly') List<String>? hourly,
    @Query('daily') List<String>? daily,
  });
}
