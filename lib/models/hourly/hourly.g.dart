// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourlyImpl _$$HourlyImplFromJson(Map<String, dynamic> json) => _$HourlyImpl(
      time: (json['time'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      temperature: (json['temperature_2m'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      precipitationProbability:
          (json['precipitation_probability'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList(),
      cloudCover: (json['cloud_cover'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$HourlyImplToJson(_$HourlyImpl instance) =>
    <String, dynamic>{
      'time': instance.time?.map((e) => e.toIso8601String()).toList(),
      'temperature_2m': instance.temperature,
      'precipitation_probability': instance.precipitationProbability,
      'cloud_cover': instance.cloudCover,
    };
