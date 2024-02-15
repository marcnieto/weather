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
    @JsonKey(name: CurrentWeatherKeys.precipitation) double? precipitation,
    @JsonKey(name: CurrentWeatherKeys.rain) double? rain,
    @JsonKey(name: CurrentWeatherKeys.showers) double? showers,
    @JsonKey(name: CurrentWeatherKeys.snowfall) double? snowfall,
    @JsonKey(name: CurrentWeatherKeys.windSpeed) double? windSpeed,
    @JsonKey(name: CurrentWeatherKeys.windDirection) double? direction,
    @JsonKey(name: CurrentWeatherKeys.cloudCover) double? cloudCover,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}
