// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherSettings {

 bool get isCelsius; String get selectedCityName;
/// Create a copy of WeatherSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherSettingsCopyWith<WeatherSettings> get copyWith => _$WeatherSettingsCopyWithImpl<WeatherSettings>(this as WeatherSettings, _$identity);

  /// Serializes this WeatherSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherSettings&&(identical(other.isCelsius, isCelsius) || other.isCelsius == isCelsius)&&(identical(other.selectedCityName, selectedCityName) || other.selectedCityName == selectedCityName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isCelsius,selectedCityName);

@override
String toString() {
  return 'WeatherSettings(isCelsius: $isCelsius, selectedCityName: $selectedCityName)';
}


}

/// @nodoc
abstract mixin class $WeatherSettingsCopyWith<$Res>  {
  factory $WeatherSettingsCopyWith(WeatherSettings value, $Res Function(WeatherSettings) _then) = _$WeatherSettingsCopyWithImpl;
@useResult
$Res call({
 bool isCelsius, String selectedCityName
});




}
/// @nodoc
class _$WeatherSettingsCopyWithImpl<$Res>
    implements $WeatherSettingsCopyWith<$Res> {
  _$WeatherSettingsCopyWithImpl(this._self, this._then);

  final WeatherSettings _self;
  final $Res Function(WeatherSettings) _then;

/// Create a copy of WeatherSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCelsius = null,Object? selectedCityName = null,}) {
  return _then(_self.copyWith(
isCelsius: null == isCelsius ? _self.isCelsius : isCelsius // ignore: cast_nullable_to_non_nullable
as bool,selectedCityName: null == selectedCityName ? _self.selectedCityName : selectedCityName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WeatherSettings implements WeatherSettings {
  const _WeatherSettings({required this.isCelsius, required this.selectedCityName});
  factory _WeatherSettings.fromJson(Map<String, dynamic> json) => _$WeatherSettingsFromJson(json);

@override final  bool isCelsius;
@override final  String selectedCityName;

/// Create a copy of WeatherSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherSettingsCopyWith<_WeatherSettings> get copyWith => __$WeatherSettingsCopyWithImpl<_WeatherSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherSettings&&(identical(other.isCelsius, isCelsius) || other.isCelsius == isCelsius)&&(identical(other.selectedCityName, selectedCityName) || other.selectedCityName == selectedCityName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isCelsius,selectedCityName);

@override
String toString() {
  return 'WeatherSettings(isCelsius: $isCelsius, selectedCityName: $selectedCityName)';
}


}

/// @nodoc
abstract mixin class _$WeatherSettingsCopyWith<$Res> implements $WeatherSettingsCopyWith<$Res> {
  factory _$WeatherSettingsCopyWith(_WeatherSettings value, $Res Function(_WeatherSettings) _then) = __$WeatherSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool isCelsius, String selectedCityName
});




}
/// @nodoc
class __$WeatherSettingsCopyWithImpl<$Res>
    implements _$WeatherSettingsCopyWith<$Res> {
  __$WeatherSettingsCopyWithImpl(this._self, this._then);

  final _WeatherSettings _self;
  final $Res Function(_WeatherSettings) _then;

/// Create a copy of WeatherSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCelsius = null,Object? selectedCityName = null,}) {
  return _then(_WeatherSettings(
isCelsius: null == isCelsius ? _self.isCelsius : isCelsius // ignore: cast_nullable_to_non_nullable
as bool,selectedCityName: null == selectedCityName ? _self.selectedCityName : selectedCityName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
