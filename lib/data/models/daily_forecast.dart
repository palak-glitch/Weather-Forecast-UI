import 'package:freezed_annotation/freezed_annotation.dart';
import 'hourly_forecast.dart';

part 'daily_forecast.freezed.dart';
part 'daily_forecast.g.dart';

@freezed
class DailyForecast with _$DailyForecast {
  const factory DailyForecast({
    required DateTime date,
    required double highTemp,
    required double lowTemp,
    required String conditionCode,
    required String conditionDescription,
    required String iconId,
    required List<HourlyForecast> hourlyForecasts,
    required double precipitationProbability,
    required int uvIndex,
    required DateTime sunrise,
    required DateTime sunset,
  }) = _DailyForecast;

  factory DailyForecast.fromJson(Map<String, dynamic> json) => _$DailyForecastFromJson(json);

  @override
  // TODO: implement conditionCode
  String get conditionCode => throw UnimplementedError();

  @override
  // TODO: implement conditionDescription
  String get conditionDescription => throw UnimplementedError();

  @override
  // TODO: implement date
  DateTime get date => throw UnimplementedError();

  @override
  // TODO: implement highTemp
  double get highTemp => throw UnimplementedError();

  @override
  // TODO: implement hourlyForecasts
  List<HourlyForecast> get hourlyForecasts => throw UnimplementedError();

  @override
  // TODO: implement iconId
  String get iconId => throw UnimplementedError();

  @override
  // TODO: implement lowTemp
  double get lowTemp => throw UnimplementedError();

  @override
  // TODO: implement precipitationProbability
  double get precipitationProbability => throw UnimplementedError();

  @override
  // TODO: implement sunrise
  DateTime get sunrise => throw UnimplementedError();

  @override
  // TODO: implement sunset
  DateTime get sunset => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement uvIndex
  int get uvIndex => throw UnimplementedError();
}
