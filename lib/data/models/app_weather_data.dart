import 'package:freezed_annotation/freezed_annotation.dart';
import 'current_weather.dart';
import 'daily_forecast.dart';
import 'weather_settings.dart';

part 'app_weather_data.freezed.dart';
part 'app_weather_data.g.dart';

@freezed
class AppWeatherData with _$AppWeatherData {
  const factory AppWeatherData({
    required CurrentWeather currentWeather,
    required List<DailyForecast> sevenDayForecast,
    required WeatherSettings appSettings,
  }) = _AppWeatherData;

  factory AppWeatherData.fromJson(Map<String, dynamic> json) =>
      _$AppWeatherDataFromJson(json);
}
