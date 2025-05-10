// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyForecast _$DailyForecastFromJson(Map<String, dynamic> json) =>
    _DailyForecast(
      date: DateTime.parse(json['date'] as String),
      highTemp: (json['highTemp'] as num).toDouble(),
      lowTemp: (json['lowTemp'] as num).toDouble(),
      conditionCode: json['conditionCode'] as String,
      conditionDescription: json['conditionDescription'] as String,
      iconId: json['iconId'] as String,
      hourlyForecasts:
          (json['hourlyForecasts'] as List<dynamic>)
              .map((e) => HourlyForecast.fromJson(e as Map<String, dynamic>))
              .toList(),
      precipitationProbability:
          (json['precipitationProbability'] as num).toDouble(),
      uvIndex: (json['uvIndex'] as num).toInt(),
      sunrise: DateTime.parse(json['sunrise'] as String),
      sunset: DateTime.parse(json['sunset'] as String),
    );

Map<String, dynamic> _$DailyForecastToJson(_DailyForecast instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'highTemp': instance.highTemp,
      'lowTemp': instance.lowTemp,
      'conditionCode': instance.conditionCode,
      'conditionDescription': instance.conditionDescription,
      'iconId': instance.iconId,
      'hourlyForecasts': instance.hourlyForecasts,
      'precipitationProbability': instance.precipitationProbability,
      'uvIndex': instance.uvIndex,
      'sunrise': instance.sunrise.toIso8601String(),
      'sunset': instance.sunset.toIso8601String(),
    };
