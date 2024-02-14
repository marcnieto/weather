import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather/app/environment.dart';
import 'package:weather/clients/open_meteo_api/open_meteo_api_client.dart';
import 'package:weather/utilities/weather_keys.dart';

void main() async {
  test('Test OpenMeteoAPIClient getForecast - Current Weather', () async {
    final httpClient = Dio();

    final weatherClient = OpenMeteoAPIClient(
      httpClient,
      baseUrl: Environment.openMeteoBaseUrl,
    );

    final forecast = await weatherClient.getForecast(
      latitude: 0,
      longitude: 0,
      temperatureUnit: TemperatureUnits.fahrenheit,
      current: [
        CurrentWeatherKeys.temperature,
      ],
    );

    expect(forecast.currentUnits != null, true);
    expect(forecast.currentUnits!.temperature != null, true);
    expect(forecast.currentUnits!.temperature!, '°F');

    expect(forecast.currentUnits!.humidity == null, true);
  });
}
