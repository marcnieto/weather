import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/utilities/weather_keys.dart';

part 'current_units.freezed.dart';
part 'current_units.g.dart';

@freezed
class CurrentUnits with _$CurrentUnits {
  factory CurrentUnits({
    String? time,
    @JsonKey(name: CurrentWeatherKeys.temperature) String? temperature,
    @JsonKey(name: CurrentWeatherKeys.relativeHumidity) String? humidity,
    @JsonKey(name: CurrentWeatherKeys.windSpeed) String? windSpeed,
    @JsonKey(name: CurrentWeatherKeys.windDirection) String? windDirection,
  }) = _CurrentUnits;

  factory CurrentUnits.fromJson(Map<String, dynamic> json) =>
      _$CurrentUnitsFromJson(json);
}
