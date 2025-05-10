// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrentWeather {

 String get city; double get temperature; String get conditionCode; String get conditionDescription; int get humidity; double get windSpeed; String get windDirection; double get feelsLike; double get pressure; double get visibility; String get iconId;
/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentWeatherCopyWith<CurrentWeather> get copyWith => _$CurrentWeatherCopyWithImpl<CurrentWeather>(this as CurrentWeather, _$identity);

  /// Serializes this CurrentWeather to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentWeather&&(identical(other.city, city) || other.city == city)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.conditionCode, conditionCode) || other.conditionCode == conditionCode)&&(identical(other.conditionDescription, conditionDescription) || other.conditionDescription == conditionDescription)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDirection, windDirection) || other.windDirection == windDirection)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.iconId, iconId) || other.iconId == iconId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,temperature,conditionCode,conditionDescription,humidity,windSpeed,windDirection,feelsLike,pressure,visibility,iconId);

@override
String toString() {
  return 'CurrentWeather(city: $city, temperature: $temperature, conditionCode: $conditionCode, conditionDescription: $conditionDescription, humidity: $humidity, windSpeed: $windSpeed, windDirection: $windDirection, feelsLike: $feelsLike, pressure: $pressure, visibility: $visibility, iconId: $iconId)';
}


}

/// @nodoc
abstract mixin class $CurrentWeatherCopyWith<$Res>  {
  factory $CurrentWeatherCopyWith(CurrentWeather value, $Res Function(CurrentWeather) _then) = _$CurrentWeatherCopyWithImpl;
@useResult
$Res call({
 String city, double temperature, String conditionCode, String conditionDescription, int humidity, double windSpeed, String windDirection, double feelsLike, double pressure, double visibility, String iconId
});




}
/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._self, this._then);

  final CurrentWeather _self;
  final $Res Function(CurrentWeather) _then;

/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = null,Object? temperature = null,Object? conditionCode = null,Object? conditionDescription = null,Object? humidity = null,Object? windSpeed = null,Object? windDirection = null,Object? feelsLike = null,Object? pressure = null,Object? visibility = null,Object? iconId = null,}) {
  return _then(_self.copyWith(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,conditionCode: null == conditionCode ? _self.conditionCode : conditionCode // ignore: cast_nullable_to_non_nullable
as String,conditionDescription: null == conditionDescription ? _self.conditionDescription : conditionDescription // ignore: cast_nullable_to_non_nullable
as String,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDirection: null == windDirection ? _self.windDirection : windDirection // ignore: cast_nullable_to_non_nullable
as String,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as double,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as double,iconId: null == iconId ? _self.iconId : iconId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CurrentWeather implements CurrentWeather {
  const _CurrentWeather({required this.city, required this.temperature, required this.conditionCode, required this.conditionDescription, required this.humidity, required this.windSpeed, required this.windDirection, required this.feelsLike, required this.pressure, required this.visibility, required this.iconId});
  factory _CurrentWeather.fromJson(Map<String, dynamic> json) => _$CurrentWeatherFromJson(json);

@override final  String city;
@override final  double temperature;
@override final  String conditionCode;
@override final  String conditionDescription;
@override final  int humidity;
@override final  double windSpeed;
@override final  String windDirection;
@override final  double feelsLike;
@override final  double pressure;
@override final  double visibility;
@override final  String iconId;

/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentWeatherCopyWith<_CurrentWeather> get copyWith => __$CurrentWeatherCopyWithImpl<_CurrentWeather>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrentWeatherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentWeather&&(identical(other.city, city) || other.city == city)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.conditionCode, conditionCode) || other.conditionCode == conditionCode)&&(identical(other.conditionDescription, conditionDescription) || other.conditionDescription == conditionDescription)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDirection, windDirection) || other.windDirection == windDirection)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.iconId, iconId) || other.iconId == iconId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,temperature,conditionCode,conditionDescription,humidity,windSpeed,windDirection,feelsLike,pressure,visibility,iconId);

@override
String toString() {
  return 'CurrentWeather(city: $city, temperature: $temperature, conditionCode: $conditionCode, conditionDescription: $conditionDescription, humidity: $humidity, windSpeed: $windSpeed, windDirection: $windDirection, feelsLike: $feelsLike, pressure: $pressure, visibility: $visibility, iconId: $iconId)';
}


}

/// @nodoc
abstract mixin class _$CurrentWeatherCopyWith<$Res> implements $CurrentWeatherCopyWith<$Res> {
  factory _$CurrentWeatherCopyWith(_CurrentWeather value, $Res Function(_CurrentWeather) _then) = __$CurrentWeatherCopyWithImpl;
@override @useResult
$Res call({
 String city, double temperature, String conditionCode, String conditionDescription, int humidity, double windSpeed, String windDirection, double feelsLike, double pressure, double visibility, String iconId
});




}
/// @nodoc
class __$CurrentWeatherCopyWithImpl<$Res>
    implements _$CurrentWeatherCopyWith<$Res> {
  __$CurrentWeatherCopyWithImpl(this._self, this._then);

  final _CurrentWeather _self;
  final $Res Function(_CurrentWeather) _then;

/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = null,Object? temperature = null,Object? conditionCode = null,Object? conditionDescription = null,Object? humidity = null,Object? windSpeed = null,Object? windDirection = null,Object? feelsLike = null,Object? pressure = null,Object? visibility = null,Object? iconId = null,}) {
  return _then(_CurrentWeather(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,conditionCode: null == conditionCode ? _self.conditionCode : conditionCode // ignore: cast_nullable_to_non_nullable
as String,conditionDescription: null == conditionDescription ? _self.conditionDescription : conditionDescription // ignore: cast_nullable_to_non_nullable
as String,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDirection: null == windDirection ? _self.windDirection : windDirection // ignore: cast_nullable_to_non_nullable
as String,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as double,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as double,iconId: null == iconId ? _self.iconId : iconId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
