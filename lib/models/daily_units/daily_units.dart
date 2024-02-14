import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/utilities/weather_keys.dart';

part 'daily_units.freezed.dart';
part 'daily_units.g.dart';

@freezed
class DailyUnits with _$DailyUnits {
  factory DailyUnits({
    String? time,
    @JsonKey(name: DailyWeatherKeys.temperatureMax) String? temperatureMax,
    @JsonKey(name: DailyWeatherKeys.temperatureMin) String? temperatureMin,
    @JsonKey(name: DailyWeatherKeys.sunrise) String? sunrise,
    @JsonKey(name: DailyWeatherKeys.sunset) String? sunset,
    @JsonKey(name: DailyWeatherKeys.precipitationProbabilityMax)
    String? precipitationProbabilityMax,
  }) = _DailyUnits;

  factory DailyUnits.fromJson(Map<String, dynamic> json) =>
      _$DailyUnitsFromJson(json);
}
