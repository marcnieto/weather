part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.locationServicesDisabled() =
      WeatherStateLocationServicesDisabled;

  const factory WeatherState.loading() = WeatherStateLocationLoading;

  const factory WeatherState.error() = WeatherStateLocationError;

  const factory WeatherState.loaded({
    required Forecast forecast,
  }) = WeatherStateLoaded;
}
