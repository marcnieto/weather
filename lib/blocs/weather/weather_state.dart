part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial({
    @Default(false) bool locationServicesEnabled,
  }) = WeatherStateInitial;

  const factory WeatherState.loading() = WeatherStateLocationLoading;

  const factory WeatherState.error() = WeatherStateLocationError;

  const factory WeatherState.loaded({
    required List<Forecast> forecasts,
  }) = WeatherStateLoaded;
}
