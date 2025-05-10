import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_settings.freezed.dart';
part 'weather_settings.g.dart';

@freezed
class WeatherSettings with _$WeatherSettings {
  const factory WeatherSettings({
    required bool isCelsius,
    required String selectedCityName,
  }) = _WeatherSettings;

  factory WeatherSettings.fromJson(Map<String, dynamic> json) => _$WeatherSettingsFromJson(json);

  @override
  // TODO: implement isCelsius
  bool get isCelsius => throw UnimplementedError();

  @override
  // TODO: implement selectedCityName
  String get selectedCityName => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
