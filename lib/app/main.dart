import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/app/environment.dart';
import 'package:provider/provider.dart';
import 'package:weather/blocs/weather/weather_bloc.dart';
import 'package:weather/clients/open_meteo_api/open_meteo_api_client.dart';
import 'package:weather/models/location/location.dart';
import 'package:weather/repositories/location/location_repository.dart';
import 'package:weather/repositories/location/location_services_repository.dart';
import 'package:weather/repositories/weather/weather_data_repository.dart';
import 'package:weather/screens/weather/weather_screen.dart';
import 'package:weather/user/user_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Clients
  final httpClient = Dio();
  final weatherClient = OpenMeteoAPIClient(
    httpClient,
    baseUrl: Environment.openMeteoBaseUrl,
  );

  // Repositories
  final repository = WeatherDataRepository(apiClient: weatherClient);

  final locationServices = LocationServicesRepository();
  final locationServicesEnabled =
      await locationServices.locationServicesGranted();

  // User Preferences
  Location? currentLocation = locationServicesEnabled
      ? await locationServices.getCurrentLocation()
      : null;

  final userPreferences = UserPreferences(currentLocation: currentLocation);
  await userPreferences.fetchPersistence();

  // Blocs
  final weatherBloc = WeatherBloc(
    initialState: const WeatherState.initial(),
    repository: repository,
    locationServices: locationServices,
  );

  weatherBloc.add(
    WeatherEvent.load(preferences: userPreferences),
  );

  runApp(
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
