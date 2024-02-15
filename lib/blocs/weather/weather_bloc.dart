import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:weather/models/forecast/forecast.dart';
import 'package:weather/repositories/location/location_repository.dart';
import 'package:weather/repositories/weather/weather_repository.dart';
import 'package:weather/user/user_preferences.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

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

    final List<Forecast> forecasts = [];

    if (currentLocation != null) {
      final forecast = await repository.getForecast(
        latitude: currentLocation.latitude,
        longitude: currentLocation.longitude,
        temperatureUnit: preferences.temperatureUnit,
      );
      forecasts.add(forecast);
    }

    for (final location in preferences.locations) {
      final forecast = await repository.getForecast(
        latitude: location.latitude,
        longitude: location.longitude,
        temperatureUnit: preferences.temperatureUnit,
      );
      forecasts.add(forecast);
    }

    emit(WeatherState.loaded(forecasts: forecasts));
  }
}
