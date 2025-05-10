// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) =>
    _CurrentWeather(
      city: json['city'] as String,
      temperature: (json['temperature'] as num).toDouble(),
      conditionCode: json['conditionCode'] as String,
      conditionDescription: json['conditionDescription'] as String,
      humidity: (json['humidity'] as num).toInt(),
      windSpeed: (json['windSpeed'] as num).toDouble(),
      windDirection: json['windDirection'] as String,
      feelsLike: (json['feelsLike'] as num).toDouble(),
      pressure: (json['pressure'] as num).toDouble(),
      visibility: (json['visibility'] as num).toDouble(),
      iconId: json['iconId'] as String,
    );

Map<String, dynamic> _$CurrentWeatherToJson(_CurrentWeather instance) =>
    <String, dynamic>{
      'city': instance.city,
      'temperature': instance.temperature,
      'conditionCode': instance.conditionCode,
      'conditionDescription': instance.conditionDescription,
      'humidity': instance.humidity,
      'windSpeed': instance.windSpeed,
      'windDirection': instance.windDirection,
      'feelsLike': instance.feelsLike,
      'pressure': instance.pressure,
      'visibility': instance.visibility,
      'iconId': instance.iconId,
    };
