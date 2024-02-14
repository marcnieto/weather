import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/utilities/weather_keys.dart';

part 'current.freezed.dart';
part 'current.g.dart';

@freezed
class Current with _$Current {
  factory Current({
    DateTime? time,
    @JsonKey(name: CurrentWeatherKeys.temperature) double? temperature,
    @JsonKey(name: CurrentWeatherKeys.relativeHumidity) int? humidity,
    @JsonKey(name: CurrentWeatherKeys.precipitation) int? precipitation,
    @JsonKey(name: CurrentWeatherKeys.rain) int? rain,
    @JsonKey(name: CurrentWeatherKeys.showers) int? showers,
    @JsonKey(name: CurrentWeatherKeys.snowfall) int? snowfall,
    @JsonKey(name: CurrentWeatherKeys.windSpeed) double? windSpeed,
    @JsonKey(name: CurrentWeatherKeys.windDirection) int? direction,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}
