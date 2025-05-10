// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HourlyForecast _$HourlyForecastFromJson(Map<String, dynamic> json) =>
    _HourlyForecast(
      time: DateTime.parse(json['time'] as String),
      temperature: (json['temperature'] as num).toDouble(),
      conditionCode: json['conditionCode'] as String,
      iconId: json['iconId'] as String,
    );

Map<String, dynamic> _$HourlyForecastToJson(_HourlyForecast instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'temperature': instance.temperature,
      'conditionCode': instance.conditionCode,
      'iconId': instance.iconId,
    };
