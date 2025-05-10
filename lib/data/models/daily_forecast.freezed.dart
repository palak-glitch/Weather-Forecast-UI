// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyForecast {

 DateTime get date; double get highTemp; double get lowTemp; String get conditionCode; String get conditionDescription; String get iconId; List<HourlyForecast> get hourlyForecasts; double get precipitationProbability; int get uvIndex; DateTime get sunrise; DateTime get sunset;
/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyForecastCopyWith<DailyForecast> get copyWith => _$DailyForecastCopyWithImpl<DailyForecast>(this as DailyForecast, _$identity);

  /// Serializes this DailyForecast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyForecast&&(identical(other.date, date) || other.date == date)&&(identical(other.highTemp, highTemp) || other.highTemp == highTemp)&&(identical(other.lowTemp, lowTemp) || other.lowTemp == lowTemp)&&(identical(other.conditionCode, conditionCode) || other.conditionCode == conditionCode)&&(identical(other.conditionDescription, conditionDescription) || other.conditionDescription == conditionDescription)&&(identical(other.iconId, iconId) || other.iconId == iconId)&&const DeepCollectionEquality().equals(other.hourlyForecasts, hourlyForecasts)&&(identical(other.precipitationProbability, precipitationProbability) || other.precipitationProbability == precipitationProbability)&&(identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,highTemp,lowTemp,conditionCode,conditionDescription,iconId,const DeepCollectionEquality().hash(hourlyForecasts),precipitationProbability,uvIndex,sunrise,sunset);

@override
String toString() {
  return 'DailyForecast(date: $date, highTemp: $highTemp, lowTemp: $lowTemp, conditionCode: $conditionCode, conditionDescription: $conditionDescription, iconId: $iconId, hourlyForecasts: $hourlyForecasts, precipitationProbability: $precipitationProbability, uvIndex: $uvIndex, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class $DailyForecastCopyWith<$Res>  {
  factory $DailyForecastCopyWith(DailyForecast value, $Res Function(DailyForecast) _then) = _$DailyForecastCopyWithImpl;
@useResult
$Res call({
 DateTime date, double highTemp, double lowTemp, String conditionCode, String conditionDescription, String iconId, List<HourlyForecast> hourlyForecasts, double precipitationProbability, int uvIndex, DateTime sunrise, DateTime sunset
});




}
/// @nodoc
class _$DailyForecastCopyWithImpl<$Res>
    implements $DailyForecastCopyWith<$Res> {
  _$DailyForecastCopyWithImpl(this._self, this._then);

  final DailyForecast _self;
  final $Res Function(DailyForecast) _then;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? highTemp = null,Object? lowTemp = null,Object? conditionCode = null,Object? conditionDescription = null,Object? iconId = null,Object? hourlyForecasts = null,Object? precipitationProbability = null,Object? uvIndex = null,Object? sunrise = null,Object? sunset = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,highTemp: null == highTemp ? _self.highTemp : highTemp // ignore: cast_nullable_to_non_nullable
as double,lowTemp: null == lowTemp ? _self.lowTemp : lowTemp // ignore: cast_nullable_to_non_nullable
as double,conditionCode: null == conditionCode ? _self.conditionCode : conditionCode // ignore: cast_nullable_to_non_nullable
as String,conditionDescription: null == conditionDescription ? _self.conditionDescription : conditionDescription // ignore: cast_nullable_to_non_nullable
as String,iconId: null == iconId ? _self.iconId : iconId // ignore: cast_nullable_to_non_nullable
as String,hourlyForecasts: null == hourlyForecasts ? _self.hourlyForecasts : hourlyForecasts // ignore: cast_nullable_to_non_nullable
as List<HourlyForecast>,precipitationProbability: null == precipitationProbability ? _self.precipitationProbability : precipitationProbability // ignore: cast_nullable_to_non_nullable
as double,uvIndex: null == uvIndex ? _self.uvIndex : uvIndex // ignore: cast_nullable_to_non_nullable
as int,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as DateTime,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DailyForecast implements DailyForecast {
  const _DailyForecast({required this.date, required this.highTemp, required this.lowTemp, required this.conditionCode, required this.conditionDescription, required this.iconId, required final  List<HourlyForecast> hourlyForecasts, required this.precipitationProbability, required this.uvIndex, required this.sunrise, required this.sunset}): _hourlyForecasts = hourlyForecasts;
  factory _DailyForecast.fromJson(Map<String, dynamic> json) => _$DailyForecastFromJson(json);

@override final  DateTime date;
@override final  double highTemp;
@override final  double lowTemp;
@override final  String conditionCode;
@override final  String conditionDescription;
@override final  String iconId;
 final  List<HourlyForecast> _hourlyForecasts;
@override List<HourlyForecast> get hourlyForecasts {
  if (_hourlyForecasts is EqualUnmodifiableListView) return _hourlyForecasts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hourlyForecasts);
}

@override final  double precipitationProbability;
@override final  int uvIndex;
@override final  DateTime sunrise;
@override final  DateTime sunset;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyForecastCopyWith<_DailyForecast> get copyWith => __$DailyForecastCopyWithImpl<_DailyForecast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyForecastToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyForecast&&(identical(other.date, date) || other.date == date)&&(identical(other.highTemp, highTemp) || other.highTemp == highTemp)&&(identical(other.lowTemp, lowTemp) || other.lowTemp == lowTemp)&&(identical(other.conditionCode, conditionCode) || other.conditionCode == conditionCode)&&(identical(other.conditionDescription, conditionDescription) || other.conditionDescription == conditionDescription)&&(identical(other.iconId, iconId) || other.iconId == iconId)&&const DeepCollectionEquality().equals(other._hourlyForecasts, _hourlyForecasts)&&(identical(other.precipitationProbability, precipitationProbability) || other.precipitationProbability == precipitationProbability)&&(identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,highTemp,lowTemp,conditionCode,conditionDescription,iconId,const DeepCollectionEquality().hash(_hourlyForecasts),precipitationProbability,uvIndex,sunrise,sunset);

@override
String toString() {
  return 'DailyForecast(date: $date, highTemp: $highTemp, lowTemp: $lowTemp, conditionCode: $conditionCode, conditionDescription: $conditionDescription, iconId: $iconId, hourlyForecasts: $hourlyForecasts, precipitationProbability: $precipitationProbability, uvIndex: $uvIndex, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class _$DailyForecastCopyWith<$Res> implements $DailyForecastCopyWith<$Res> {
  factory _$DailyForecastCopyWith(_DailyForecast value, $Res Function(_DailyForecast) _then) = __$DailyForecastCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double highTemp, double lowTemp, String conditionCode, String conditionDescription, String iconId, List<HourlyForecast> hourlyForecasts, double precipitationProbability, int uvIndex, DateTime sunrise, DateTime sunset
});




}
/// @nodoc
class __$DailyForecastCopyWithImpl<$Res>
    implements _$DailyForecastCopyWith<$Res> {
  __$DailyForecastCopyWithImpl(this._self, this._then);

  final _DailyForecast _self;
  final $Res Function(_DailyForecast) _then;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? highTemp = null,Object? lowTemp = null,Object? conditionCode = null,Object? conditionDescription = null,Object? iconId = null,Object? hourlyForecasts = null,Object? precipitationProbability = null,Object? uvIndex = null,Object? sunrise = null,Object? sunset = null,}) {
  return _then(_DailyForecast(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,highTemp: null == highTemp ? _self.highTemp : highTemp // ignore: cast_nullable_to_non_nullable
as double,lowTemp: null == lowTemp ? _self.lowTemp : lowTemp // ignore: cast_nullable_to_non_nullable
as double,conditionCode: null == conditionCode ? _self.conditionCode : conditionCode // ignore: cast_nullable_to_non_nullable
as String,conditionDescription: null == conditionDescription ? _self.conditionDescription : conditionDescription // ignore: cast_nullable_to_non_nullable
as String,iconId: null == iconId ? _self.iconId : iconId // ignore: cast_nullable_to_non_nullable
as String,hourlyForecasts: null == hourlyForecasts ? _self._hourlyForecasts : hourlyForecasts // ignore: cast_nullable_to_non_nullable
as List<HourlyForecast>,precipitationProbability: null == precipitationProbability ? _self.precipitationProbability : precipitationProbability // ignore: cast_nullable_to_non_nullable
as double,uvIndex: null == uvIndex ? _self.uvIndex : uvIndex // ignore: cast_nullable_to_non_nullable
as int,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as DateTime,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
