// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_units.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyUnitsImpl _$$DailyUnitsImplFromJson(Map<String, dynamic> json) =>
    _$DailyUnitsImpl(
      time: json['time'] as String?,
      temperatureMax: json['temperature_2m_max'] as String?,
      temperatureMin: json['temperature_2m_min'] as String?,
      sunrise: json['sunrise'] as String?,
      sunset: json['sunset'] as String?,
      precipitationProbabilityMax:
          json['precipitation_probability_max'] as String?,
    );

Map<String, dynamic> _$$DailyUnitsImplToJson(_$DailyUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m_max': instance.temperatureMax,
      'temperature_2m_min': instance.temperatureMin,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'precipitation_probability_max': instance.precipitationProbabilityMax,
    };
