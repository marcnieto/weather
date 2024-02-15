// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_units.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourlyUnitsImpl _$$HourlyUnitsImplFromJson(Map<String, dynamic> json) =>
    _$HourlyUnitsImpl(
      time: json['time'] as String?,
      temperature: json['temperature_2m'] as String?,
      precipitationProbability: json['precipitation_probability'] as String?,
    );

Map<String, dynamic> _$$HourlyUnitsImplToJson(_$HourlyUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature,
      'precipitation_probability': instance.precipitationProbability,
    };
