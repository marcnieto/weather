import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:weather/blocs/weather/weather_bloc.dart';
import 'package:weather/clients/open_meteo_api/open_meteo_api_client.dart';
import 'package:weather/models/current/current.dart';
import 'package:weather/models/current_units/current_units.dart';
import 'package:weather/models/daily/daily.dart';
import 'package:weather/models/daily_units/daily_units.dart';
import 'package:weather/models/forecast/forecast.dart';
import 'package:weather/models/hourly/hourly.dart';
import 'package:weather/models/hourly_units/hourly_units.dart';
import 'package:weather/models/location/location.dart';
import 'package:weather/repositories/location/location_repository.dart';
import 'package:weather/repositories/location/location_services_repository.dart';
import 'package:weather/repositories/weather/weather_data_repository.dart';
import 'package:weather/screens/weather/weather_screen.dart';
import 'package:mockito/annotations.dart';
import 'package:weather/user/user_preferences.dart';

@GenerateMocks([LocationServicesRepository])
@GenerateMocks([OpenMeteoAPIClient])
import 'weather_screen_test.mocks.dart';

void main() async {
  testWidgets('Test WeatherScreen - Location Services Enabled',
      (WidgetTester tester) async {
    const double latitude = 15;
    const double longitude = 15;

    final forecast = Forecast(
      latitude: latitude,
      longitude: longitude,
      current: Current(
        time: DateTime.now(),
        temperature: 50.4,
        humidity: 47.8,
        windSpeed: 2.4,
        direction: 189.8,
        isDay: 1,
        weatherCode: 1,
      ),
      currentUnits: CurrentUnits(
        time: '',
        temperature: '°F',
        humidity: '%',
        windSpeed: 'mp/h',
        windDirection: '°',
      ),
    );

    final weatherClient = MockOpenMeteoAPIClient();

    when(
      weatherClient.getForecast(
        latitude: anyNamed('latitude'),
        longitude: anyNamed('longitude'),
        temperatureUnit: anyNamed('temperatureUnit'),
        windSpeedUnit: anyNamed('windSpeedUnit'),
        forecastDays: anyNamed('forecastDays'),
        forecastHours: anyNamed('forecastHours'),
        current: anyNamed('current'),
        hourly: anyNamed('hourly'),
        daily: anyNamed('daily'),
        timezone: anyNamed('timezone'),
      ),
    ).thenAnswer(
      (_) => Future.value(forecast),
    );

    final locationServices = MockLocationServicesRepository();

    when(
      locationServices.getCurrentLocation(),
    ).thenAnswer(
      (_) => Future.value(
        Location(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );

    when(
      locationServices.locationServicesGranted(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    when(
      locationServices.requestPermission(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    await pumpWeatherScreen(
      tester,
      weatherClient: weatherClient,
      locationServices: locationServices,
    );

    expect(find.text('50°F'), findsOneWidget);
    expect(find.text('Mainly clear'), findsOneWidget);
    expect(find.text('2mp/h Wind SW'), findsOneWidget);
    expect(find.text('48% Humidity'), findsOneWidget);
  });

  testWidgets('Test WeatherScreen - Location Services Disabled',
      (WidgetTester tester) async {
    const double latitude = 15;
    const double longitude = 15;

    final forecast = Forecast(
      latitude: latitude,
      longitude: longitude,
      current: Current(
        time: DateTime.now(),
        temperature: 50.4,
        humidity: 47.8,
        windSpeed: 2.4,
        direction: 189.8,
        isDay: 1,
        weatherCode: 1,
      ),
      currentUnits: CurrentUnits(
        time: '',
        temperature: '°F',
        humidity: '%',
        windSpeed: 'mp/h',
        windDirection: '°',
      ),
    );

    final weatherClient = MockOpenMeteoAPIClient();

    when(
      weatherClient.getForecast(
        latitude: anyNamed('latitude'),
        longitude: anyNamed('longitude'),
        temperatureUnit: anyNamed('temperatureUnit'),
        windSpeedUnit: anyNamed('windSpeedUnit'),
        forecastDays: anyNamed('forecastDays'),
        forecastHours: anyNamed('forecastHours'),
        current: anyNamed('current'),
        hourly: anyNamed('hourly'),
        daily: anyNamed('daily'),
        timezone: anyNamed('timezone'),
      ),
    ).thenAnswer(
      (_) => Future.value(forecast),
    );

    final locationServices = MockLocationServicesRepository();

    when(
      locationServices.getCurrentLocation(),
    ).thenAnswer(
      (_) => Future.value(
        Location(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );

    when(
      locationServices.locationServicesGranted(),
    ).thenAnswer(
      (_) => Future.value(false),
    );

    when(
      locationServices.requestPermission(),
    ).thenAnswer(
      (_) => Future.value(false),
    );

    await pumpWeatherScreen(
      tester,
      weatherClient: weatherClient,
      locationServices: locationServices,
    );

    expect(
      find.text('Please enable location services or add a location'),
      findsOneWidget,
    );
  });

  testWidgets('Test WeatherScreen - Error', (WidgetTester tester) async {
    const double latitude = 15;
    const double longitude = 15;

    final weatherClient = MockOpenMeteoAPIClient();

    when(
      weatherClient.getForecast(
        latitude: anyNamed('latitude'),
        longitude: anyNamed('longitude'),
        temperatureUnit: anyNamed('temperatureUnit'),
        windSpeedUnit: anyNamed('windSpeedUnit'),
        forecastDays: anyNamed('forecastDays'),
        forecastHours: anyNamed('forecastHours'),
        current: anyNamed('current'),
        hourly: anyNamed('hourly'),
        daily: anyNamed('daily'),
        timezone: anyNamed('timezone'),
      ),
    ).thenAnswer(
      (_) => throw Error(),
    );

    final locationServices = MockLocationServicesRepository();

    when(
      locationServices.getCurrentLocation(),
    ).thenAnswer(
      (_) => Future.value(
        Location(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );

    when(
      locationServices.locationServicesGranted(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    when(
      locationServices.requestPermission(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    await pumpWeatherScreen(
      tester,
      weatherClient: weatherClient,
      locationServices: locationServices,
    );

    expect(
      find.text('Something went wrong. Please try again.'),
      findsOneWidget,
    );
  });

  // Hourly tests relies on all
  testWidgets('Test WeatherScreen - Hourly Section',
      (WidgetTester tester) async {
    const double latitude = 15;
    const double longitude = 15;
    final time = DateTime.now().copyWith(hour: 0);

    final forecast = Forecast(
      latitude: latitude,
      longitude: longitude,
      hourly: Hourly(
        time: [
          time,
          time.add(const Duration(hours: 1)),
          time.add(const Duration(hours: 2)),
          time.add(const Duration(hours: 3)),
          time.add(const Duration(hours: 4)),
        ],
        temperature: [43.3, 45.6, 47.9, 46.3, 48.2],
        precipitationProbability: [3.3, 5.6, 7.9, 6.3, 8.2],
        isDay: [0, 0, 0, 0, 0],
        weatherCode: [3, 3, 3, 3, 3],
      ),
      hourlyUnits: HourlyUnits(
        temperature: '°F',
        precipitationProbability: '%',
      ),
    );

    final weatherClient = MockOpenMeteoAPIClient();

    when(
      weatherClient.getForecast(
        latitude: anyNamed('latitude'),
        longitude: anyNamed('longitude'),
        temperatureUnit: anyNamed('temperatureUnit'),
        windSpeedUnit: anyNamed('windSpeedUnit'),
        forecastDays: anyNamed('forecastDays'),
        forecastHours: anyNamed('forecastHours'),
        current: anyNamed('current'),
        hourly: anyNamed('hourly'),
        daily: anyNamed('daily'),
        timezone: anyNamed('timezone'),
      ),
    ).thenAnswer(
      (_) => Future.value(forecast),
    );

    final locationServices = MockLocationServicesRepository();

    when(
      locationServices.getCurrentLocation(),
    ).thenAnswer(
      (_) => Future.value(
        Location(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );

    when(
      locationServices.locationServicesGranted(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    when(
      locationServices.requestPermission(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    await pumpWeatherScreen(
      tester,
      weatherClient: weatherClient,
      locationServices: locationServices,
    );

    expect(find.text('HOURLY'), findsOneWidget);
    expect(find.text('12AM'), findsOneWidget);
    expect(find.text('1AM'), findsOneWidget);
    expect(find.text('2AM'), findsOneWidget);
    expect(find.text('3AM'), findsOneWidget);
    expect(find.text('4AM'), findsOneWidget);
    expect(find.text('43°F'), findsOneWidget);
    expect(find.text('46°F'), findsExactly(2));
    expect(find.text('48°F'), findsExactly(2));
  });

  testWidgets('Test WeatherScreen - Invalid Hourly Data',
      (WidgetTester tester) async {
    const double latitude = 15;
    const double longitude = 15;
    final time = DateTime.now().copyWith(hour: 0);

    final forecast = Forecast(
      latitude: latitude,
      longitude: longitude,
      hourly: Hourly(
        time: [
          time,
          time.add(const Duration(hours: 1)),
          time.add(const Duration(hours: 2)),
          time.add(const Duration(hours: 3)),
        ],
        temperature: [43.3, 45.6, 47.9, 46.3, 48.2],
        precipitationProbability: [3.3, 5.6, 7.9, 6.3, 8.2],
        isDay: [0, 0, 0, 0, 0],
      ),
      hourlyUnits: HourlyUnits(
        temperature: '°F',
        precipitationProbability: '%',
      ),
    );

    final weatherClient = MockOpenMeteoAPIClient();

    when(
      weatherClient.getForecast(
        latitude: anyNamed('latitude'),
        longitude: anyNamed('longitude'),
        temperatureUnit: anyNamed('temperatureUnit'),
        windSpeedUnit: anyNamed('windSpeedUnit'),
        forecastDays: anyNamed('forecastDays'),
        forecastHours: anyNamed('forecastHours'),
        current: anyNamed('current'),
        hourly: anyNamed('hourly'),
        daily: anyNamed('daily'),
        timezone: anyNamed('timezone'),
      ),
    ).thenAnswer(
      (_) => Future.value(forecast),
    );

    final locationServices = MockLocationServicesRepository();

    when(
      locationServices.getCurrentLocation(),
    ).thenAnswer(
      (_) => Future.value(
        Location(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );

    when(
      locationServices.locationServicesGranted(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    when(
      locationServices.requestPermission(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    await pumpWeatherScreen(
      tester,
      weatherClient: weatherClient,
      locationServices: locationServices,
    );

    expect(find.text('HOURLY'), findsNothing);
  });

  testWidgets('Test WeatherScreen - Daily Section',
      (WidgetTester tester) async {
    const double latitude = 15;
    const double longitude = 15;
    final time = DateTime.now();

    final forecast = Forecast(
      latitude: latitude,
      longitude: longitude,
      daily: Daily(
        time: [
          time,
          time.add(const Duration(days: 1)),
          time.add(const Duration(days: 2)),
        ],
        temperatureMin: [35.3, 37.5, 41.8],
        temperatureMax: [54.0, 57.4, 64.3],
        precipitationProbabilityMax: [0, 0, 0],
        weatherCode: [0, 0, 0],
      ),
      dailyUnits: DailyUnits(
        temperatureMax: '°F',
        temperatureMin: '°F',
        precipitationProbabilityMax: '%',
      ),
    );

    final weatherClient = MockOpenMeteoAPIClient();

    when(
      weatherClient.getForecast(
        latitude: anyNamed('latitude'),
        longitude: anyNamed('longitude'),
        temperatureUnit: anyNamed('temperatureUnit'),
        windSpeedUnit: anyNamed('windSpeedUnit'),
        forecastDays: anyNamed('forecastDays'),
        forecastHours: anyNamed('forecastHours'),
        current: anyNamed('current'),
        hourly: anyNamed('hourly'),
        daily: anyNamed('daily'),
        timezone: anyNamed('timezone'),
      ),
    ).thenAnswer(
      (_) => Future.value(forecast),
    );

    final locationServices = MockLocationServicesRepository();

    when(
      locationServices.getCurrentLocation(),
    ).thenAnswer(
      (_) => Future.value(
        Location(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );

    when(
      locationServices.locationServicesGranted(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    when(
      locationServices.requestPermission(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    await pumpWeatherScreen(
      tester,
      weatherClient: weatherClient,
      locationServices: locationServices,
    );

    expect(find.text('DAILY'), findsOneWidget);
    expect(find.text('Today'), findsOneWidget);
    expect(find.text('H: 54°F  |  L: 35°F'), findsOneWidget);
    expect(find.text('H: 57°F  |  L: 38°F'), findsOneWidget);
    expect(find.text('H: 64°F  |  L: 42°F'), findsOneWidget);
  });

  testWidgets('Test WeatherScreen - Invalid Daily Data',
      (WidgetTester tester) async {
    const double latitude = 15;
    const double longitude = 15;
    final time = DateTime.now();

    final forecast = Forecast(
      latitude: latitude,
      longitude: longitude,
      daily: Daily(
        time: [
          time,
          time.add(const Duration(days: 1)),
        ],
        temperatureMin: [35.3, 37.5, 41.8],
        temperatureMax: [54.0, 57.4, 64.3],
        precipitationProbabilityMax: [0, 0, 0],
      ),
      dailyUnits: DailyUnits(
        temperatureMax: '°F',
        temperatureMin: '°F',
        precipitationProbabilityMax: '%',
      ),
    );

    final weatherClient = MockOpenMeteoAPIClient();

    when(
      weatherClient.getForecast(
        latitude: anyNamed('latitude'),
        longitude: anyNamed('longitude'),
        temperatureUnit: anyNamed('temperatureUnit'),
        windSpeedUnit: anyNamed('windSpeedUnit'),
        forecastDays: anyNamed('forecastDays'),
        forecastHours: anyNamed('forecastHours'),
        current: anyNamed('current'),
        hourly: anyNamed('hourly'),
        daily: anyNamed('daily'),
        timezone: anyNamed('timezone'),
      ),
    ).thenAnswer(
      (_) => Future.value(forecast),
    );

    final locationServices = MockLocationServicesRepository();

    when(
      locationServices.getCurrentLocation(),
    ).thenAnswer(
      (_) => Future.value(
        Location(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );

    when(
      locationServices.locationServicesGranted(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    when(
      locationServices.requestPermission(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    await pumpWeatherScreen(
      tester,
      weatherClient: weatherClient,
      locationServices: locationServices,
    );

    expect(find.text('DAILY'), findsNothing);
  });
}

Future<void> pumpWeatherScreen(
  WidgetTester tester, {
  required OpenMeteoAPIClient weatherClient,
  required LocationRepository locationServices,
}) async {
  // Repositories
  final repository = WeatherDataRepository(apiClient: weatherClient);

  final locationServicesEnabled =
      await locationServices.locationServicesGranted();

  // User Preferences
  Location? currentLocation = locationServicesEnabled
      ? await locationServices.getCurrentLocation()
      : null;

  final userPreferences = UserPreferences(currentLocation: currentLocation);

  // Blocs
  final weatherBloc = WeatherBloc(
    initialState: const WeatherState.initial(),
    repository: repository,
    locationServices: locationServices,
  );

  weatherBloc.add(
    WeatherEvent.load(preferences: userPreferences),
  );

  await tester.pumpWidget(
    MultiProvider(
      providers: [
        Provider<UserPreferences>.value(
          value: userPreferences,
        ),
        Provider<LocationRepository>.value(
          value: locationServices,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<WeatherBloc>(
            create: (context) => weatherBloc,
          ),
        ],
        child: MaterialApp(
          home: WeatherScreen(),
        ),
      ),
    ),
  );
}
