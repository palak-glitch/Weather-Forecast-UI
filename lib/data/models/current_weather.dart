import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    required String city,
    required double temperature,
    required String conditionCode,
    required String conditionDescription,
    required int humidity,
    required double windSpeed,
    required String windDirection,
    required double feelsLike,
    required double pressure,
    required double visibility,
    required String iconId,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) => _$CurrentWeatherFromJson(json);
}
