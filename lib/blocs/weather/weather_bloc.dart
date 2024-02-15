import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:weather/models/forecast/forecast.dart';
import 'package:weather/repositories/location/location_repository.dart';
import 'package:weather/repositories/weather/weather_repository.dart';
import 'package:weather/user/user_preferences.dart';
import 'package:weather/utilities/weather_keys.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

const List<String> kCurrentWeatherProperties = [
  CurrentWeatherKeys.temperature,
  CurrentWeatherKeys.apparentTemperature,
  CurrentWeatherKeys.cloudCover,
  CurrentWeatherKeys.precipitation,
  CurrentWeatherKeys.windSpeed,
  CurrentWeatherKeys.windDirection,
];

const List<String> khourlyWeatherProperties = [
  HourlyWeatherKeys.temperature,
  HourlyWeatherKeys.cloudCover,
  HourlyWeatherKeys.precipitationProbability,
];

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository repository;
  final LocationRepository locationServices;

  WeatherBloc({
    required WeatherState initialState,
    required this.repository,
    required this.locationServices,
  }) : super(initialState) {
    _mapEventsToStates();
  }

  void _mapEventsToStates() {
    on<WeatherEventLoad>(_onLoad);
    on<WeatherEventRequestLocationServices>(_onRequestLocationServices);
  }

  Future<void> _onLoad(
    WeatherEventLoad event,
    Emitter<WeatherState> emit,
  ) async {
    final preferences = event.preferences;
    final currentLocation = preferences.currentLocation;

    if (currentLocation == null && preferences.locations.isEmpty) {
      emit(const WeatherState.initial());
      return;
    }

    emit(const WeatherState.loading());

    final List<Forecast> forecasts = [];

    if (currentLocation != null) {
      final forecast = await repository.getForecast(
        latitude: currentLocation.latitude,
        longitude: currentLocation.longitude,
        temperatureUnit: preferences.temperatureUnit,
        currentWeatherProperties: kCurrentWeatherProperties,
        hourlyWeatherProperties:
            preferences.showHourlyForecast ? khourlyWeatherProperties : null,
      );
      forecasts.add(forecast);
    }

    for (final location in preferences.locations) {
      final forecast = await repository.getForecast(
        latitude: location.latitude,
        longitude: location.longitude,
        temperatureUnit: preferences.temperatureUnit,
        currentWeatherProperties: kCurrentWeatherProperties,
        hourlyWeatherProperties:
            preferences.showHourlyForecast ? khourlyWeatherProperties : null,
      );
      forecasts.add(forecast);
    }

    emit(WeatherState.loaded(forecasts: forecasts));
  }

  Future<void> _onRequestLocationServices(
    WeatherEventRequestLocationServices event,
    Emitter<WeatherState> emit,
  ) async {
    emit(const WeatherState.loading());
    final permissionGranted = await locationServices.requestPermission();
    if (permissionGranted) {
      emit(const WeatherState.initial(locationServicesEnabled: true));
    }

    emit(const WeatherState.initial());
  }
}
