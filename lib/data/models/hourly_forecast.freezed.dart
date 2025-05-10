// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HourlyForecast {

 DateTime get time; double get temperature; String get conditionCode; String get iconId;
/// Create a copy of HourlyForecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HourlyForecastCopyWith<HourlyForecast> get copyWith => _$HourlyForecastCopyWithImpl<HourlyForecast>(this as HourlyForecast, _$identity);

  /// Serializes this HourlyForecast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HourlyForecast&&(identical(other.time, time) || other.time == time)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.conditionCode, conditionCode) || other.conditionCode == conditionCode)&&(identical(other.iconId, iconId) || other.iconId == iconId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,temperature,conditionCode,iconId);

@override
String toString() {
  return 'HourlyForecast(time: $time, temperature: $temperature, conditionCode: $conditionCode, iconId: $iconId)';
}


}

/// @nodoc
abstract mixin class $HourlyForecastCopyWith<$Res>  {
  factory $HourlyForecastCopyWith(HourlyForecast value, $Res Function(HourlyForecast) _then) = _$HourlyForecastCopyWithImpl;
@useResult
$Res call({
 DateTime time, double temperature, String conditionCode, String iconId
});




}
/// @nodoc
class _$HourlyForecastCopyWithImpl<$Res>
    implements $HourlyForecastCopyWith<$Res> {
  _$HourlyForecastCopyWithImpl(this._self, this._then);

  final HourlyForecast _self;
  final $Res Function(HourlyForecast) _then;

/// Create a copy of HourlyForecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? temperature = null,Object? conditionCode = null,Object? iconId = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,conditionCode: null == conditionCode ? _self.conditionCode : conditionCode // ignore: cast_nullable_to_non_nullable
as String,iconId: null == iconId ? _self.iconId : iconId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _HourlyForecast implements HourlyForecast {
  const _HourlyForecast({required this.time, required this.temperature, required this.conditionCode, required this.iconId});
  factory _HourlyForecast.fromJson(Map<String, dynamic> json) => _$HourlyForecastFromJson(json);

@override final  DateTime time;
@override final  double temperature;
@override final  String conditionCode;
@override final  String iconId;

/// Create a copy of HourlyForecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HourlyForecastCopyWith<_HourlyForecast> get copyWith => __$HourlyForecastCopyWithImpl<_HourlyForecast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HourlyForecastToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HourlyForecast&&(identical(other.time, time) || other.time == time)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.conditionCode, conditionCode) || other.conditionCode == conditionCode)&&(identical(other.iconId, iconId) || other.iconId == iconId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,temperature,conditionCode,iconId);

@override
String toString() {
  return 'HourlyForecast(time: $time, temperature: $temperature, conditionCode: $conditionCode, iconId: $iconId)';
}


}

/// @nodoc
abstract mixin class _$HourlyForecastCopyWith<$Res> implements $HourlyForecastCopyWith<$Res> {
  factory _$HourlyForecastCopyWith(_HourlyForecast value, $Res Function(_HourlyForecast) _then) = __$HourlyForecastCopyWithImpl;
@override @useResult
$Res call({
 DateTime time, double temperature, String conditionCode, String iconId
});




}
/// @nodoc
class __$HourlyForecastCopyWithImpl<$Res>
    implements _$HourlyForecastCopyWith<$Res> {
  __$HourlyForecastCopyWithImpl(this._self, this._then);

  final _HourlyForecast _self;
  final $Res Function(_HourlyForecast) _then;

/// Create a copy of HourlyForecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? temperature = null,Object? conditionCode = null,Object? iconId = null,}) {
  return _then(_HourlyForecast(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,conditionCode: null == conditionCode ? _self.conditionCode : conditionCode // ignore: cast_nullable_to_non_nullable
as String,iconId: null == iconId ? _self.iconId : iconId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
