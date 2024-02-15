import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/utilities/weather_keys.dart';

part 'current.freezed.dart';
part 'current.g.dart';

@freezed
class Current with _$Current {
  factory Current({
    DateTime? time,
    @JsonKey(name: CurrentWeatherKeys.temperature) double? temperature,
    @JsonKey(name: CurrentWeatherKeys.relativeHumidity) double? humidity,
    @JsonKey(name: CurrentWeatherKeys.windSpeed) double? windSpeed,
    @JsonKey(name: CurrentWeatherKeys.windDirection) double? direction,
    @JsonKey(name: CurrentWeatherKeys.isDay) int? isDay,
    @JsonKey(name: CurrentWeatherKeys.weatherCode) int? weatherCode,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}
