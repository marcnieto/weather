part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.requestLocationServices() =
      WeatherEventRequestLocationServices;

  const factory WeatherEvent.load({
    required UserPreferences preferences,
  }) = WeatherEventLoad;
}
