// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_weather_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppWeatherData _$AppWeatherDataFromJson(Map<String, dynamic> json) =>
    _AppWeatherData(
      currentWeather: CurrentWeather.fromJson(
        json['currentWeather'] as Map<String, dynamic>,
      ),
      sevenDayForecast:
          (json['sevenDayForecast'] as List<dynamic>)
              .map((e) => DailyForecast.fromJson(e as Map<String, dynamic>))
              .toList(),
      appSettings: WeatherSettings.fromJson(
        json['appSettings'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AppWeatherDataToJson(_AppWeatherData instance) =>
    <String, dynamic>{
      'currentWeather': instance.currentWeather,
      'sevenDayForecast': instance.sevenDayForecast,
      'appSettings': instance.appSettings,
    };
