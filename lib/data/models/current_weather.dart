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

  @override
  // TODO: implement city
  String get city => throw UnimplementedError();

  @override
  // TODO: implement conditionCode
  String get conditionCode => throw UnimplementedError();

  @override
  // TODO: implement conditionDescription
  String get conditionDescription => throw UnimplementedError();

  @override
  // TODO: implement feelsLike
  double get feelsLike => throw UnimplementedError();

  @override
  // TODO: implement humidity
  int get humidity => throw UnimplementedError();

  @override
  // TODO: implement iconId
  String get iconId => throw UnimplementedError();

  @override
  // TODO: implement pressure
  double get pressure => throw UnimplementedError();

  @override
  // TODO: implement temperature
  double get temperature => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement visibility
  double get visibility => throw UnimplementedError();

  @override
  // TODO: implement windDirection
  String get windDirection => throw UnimplementedError();

  @override
  // TODO: implement windSpeed
  double get windSpeed => throw UnimplementedError();
}
