import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly_forecast.freezed.dart';
part 'hourly_forecast.g.dart';

@freezed
class HourlyForecast with _$HourlyForecast {
  const factory HourlyForecast({
    required DateTime time,
    required double temperature,
    required String conditionCode,
    required String iconId,
  }) = _HourlyForecast;

  factory HourlyForecast.fromJson(Map<String, dynamic> json) => _$HourlyForecastFromJson(json);

  @override
  // TODO: implement conditionCode
  String get conditionCode => throw UnimplementedError();

  @override
  // TODO: implement iconId
  String get iconId => throw UnimplementedError();

  @override
  // TODO: implement temperature
  double get temperature => throw UnimplementedError();

  @override
  // TODO: implement time
  DateTime get time => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
