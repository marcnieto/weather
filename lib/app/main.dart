import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/app/environment.dart';
import 'package:weather/clients/open_meteo_api_client.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/forecast/forecast.dart';
import 'package:weather/utilities/weather_keys.dart';

void main() {
  final httpClient = Dio();

  final weatherClient = OpenMeteoAPIClient(
    httpClient,
    baseUrl: Environment.openMeteoBaseUrl,
  );

  runApp(
    MultiProvider(
      providers: [
        Provider<OpenMeteoAPIClient>.value(
          value: weatherClient,
        ),
      ],
      child: const WeatherApp(),
    ),
  );
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  Future<Forecast> _fetchCurrentWeather(BuildContext context) async {
    final forecast = await context.read<OpenMeteoAPIClient>().getForecast(
      latitude: 52.52,
      longitude: 13.41,
      temperatureUnit: TemperatureUnits.fahrenheit,
      current: [
        CurrentWeatherKeys.temperature,
        CurrentWeatherKeys.apparentTemperature,
        CurrentWeatherKeys.cloudCover,
        CurrentWeatherKeys.relativeHumidity,
        CurrentWeatherKeys.windSpeed,
        CurrentWeatherKeys.windDirection,
      ],
    );
    return forecast;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () => _fetchCurrentWeather(context),
            child: const Icon(Icons.add),
          ),
          body: Container()),
    );
  }
}
