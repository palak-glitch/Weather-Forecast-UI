import 'package:freezed_annotation/freezed_annotation.dart';
import 'hourly_forecast.dart';

part 'daily_forecast.freezed.dart';
part 'daily_forecast.g.dart';


@freezed
abstract class DailyForecast with _$DailyForecast {
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

  factory DailyForecast.fromJson(Map<String, dynamic> json) =>
      _$DailyForecastFromJson(json);
}

