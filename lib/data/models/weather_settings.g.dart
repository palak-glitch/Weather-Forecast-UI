// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherSettings _$WeatherSettingsFromJson(Map<String, dynamic> json) =>
    _WeatherSettings(
      isCelsius: json['isCelsius'] as bool,
      selectedCityName: json['selectedCityName'] as String,
    );

Map<String, dynamic> _$WeatherSettingsToJson(_WeatherSettings instance) =>
    <String, dynamic>{
      'isCelsius': instance.isCelsius,
      'selectedCityName': instance.selectedCityName,
    };
