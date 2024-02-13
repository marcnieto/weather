import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/app/environment.dart';
import 'package:weather/clients/open_meteo_api_client.dart';
import 'package:provider/provider.dart';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      home: Scaffold(body: Container()),
    );
  }
}
