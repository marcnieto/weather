// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_units.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentUnitsImpl _$$CurrentUnitsImplFromJson(Map<String, dynamic> json) =>
    _$CurrentUnitsImpl(
      time: json['time'] as String?,
      temperature: json['temperature_2m'] as String?,
      humidity: json['relative_humidity_2m'] as String?,
      windSpeed: json['wind_speed_10m'] as String?,
      windDirection: json['wind_direction_10m'] as String?,
    );

Map<String, dynamic> _$$CurrentUnitsImplToJson(_$CurrentUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature,
      'relative_humidity_2m': instance.humidity,
      'wind_speed_10m': instance.windSpeed,
      'wind_direction_10m': instance.windDirection,
    };
