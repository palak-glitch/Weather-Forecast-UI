// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_weather_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppWeatherData {

 CurrentWeather get currentWeather; List<DailyForecast> get sevenDayForecast; WeatherSettings get appSettings;
/// Create a copy of AppWeatherData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppWeatherDataCopyWith<AppWeatherData> get copyWith => _$AppWeatherDataCopyWithImpl<AppWeatherData>(this as AppWeatherData, _$identity);

  /// Serializes this AppWeatherData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppWeatherData&&(identical(other.currentWeather, currentWeather) || other.currentWeather == currentWeather)&&const DeepCollectionEquality().equals(other.sevenDayForecast, sevenDayForecast)&&(identical(other.appSettings, appSettings) || other.appSettings == appSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentWeather,const DeepCollectionEquality().hash(sevenDayForecast),appSettings);

@override
String toString() {
  return 'AppWeatherData(currentWeather: $currentWeather, sevenDayForecast: $sevenDayForecast, appSettings: $appSettings)';
}


}

/// @nodoc
abstract mixin class $AppWeatherDataCopyWith<$Res>  {
  factory $AppWeatherDataCopyWith(AppWeatherData value, $Res Function(AppWeatherData) _then) = _$AppWeatherDataCopyWithImpl;
@useResult
$Res call({
 CurrentWeather currentWeather, List<DailyForecast> sevenDayForecast, WeatherSettings appSettings
});


$CurrentWeatherCopyWith<$Res> get currentWeather;$WeatherSettingsCopyWith<$Res> get appSettings;

}
/// @nodoc
class _$AppWeatherDataCopyWithImpl<$Res>
    implements $AppWeatherDataCopyWith<$Res> {
  _$AppWeatherDataCopyWithImpl(this._self, this._then);

  final AppWeatherData _self;
  final $Res Function(AppWeatherData) _then;

/// Create a copy of AppWeatherData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentWeather = null,Object? sevenDayForecast = null,Object? appSettings = null,}) {
  return _then(_self.copyWith(
currentWeather: null == currentWeather ? _self.currentWeather : currentWeather // ignore: cast_nullable_to_non_nullable
as CurrentWeather,sevenDayForecast: null == sevenDayForecast ? _self.sevenDayForecast : sevenDayForecast // ignore: cast_nullable_to_non_nullable
as List<DailyForecast>,appSettings: null == appSettings ? _self.appSettings : appSettings // ignore: cast_nullable_to_non_nullable
as WeatherSettings,
  ));
}
/// Create a copy of AppWeatherData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentWeatherCopyWith<$Res> get currentWeather {
  
  return $CurrentWeatherCopyWith<$Res>(_self.currentWeather, (value) {
    return _then(_self.copyWith(currentWeather: value));
  });
}/// Create a copy of AppWeatherData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherSettingsCopyWith<$Res> get appSettings {
  
  return $WeatherSettingsCopyWith<$Res>(_self.appSettings, (value) {
    return _then(_self.copyWith(appSettings: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _AppWeatherData implements AppWeatherData {
  const _AppWeatherData({required this.currentWeather, required final  List<DailyForecast> sevenDayForecast, required this.appSettings}): _sevenDayForecast = sevenDayForecast;
  factory _AppWeatherData.fromJson(Map<String, dynamic> json) => _$AppWeatherDataFromJson(json);

@override final  CurrentWeather currentWeather;
 final  List<DailyForecast> _sevenDayForecast;
@override List<DailyForecast> get sevenDayForecast {
  if (_sevenDayForecast is EqualUnmodifiableListView) return _sevenDayForecast;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sevenDayForecast);
}

@override final  WeatherSettings appSettings;

/// Create a copy of AppWeatherData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppWeatherDataCopyWith<_AppWeatherData> get copyWith => __$AppWeatherDataCopyWithImpl<_AppWeatherData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppWeatherDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppWeatherData&&(identical(other.currentWeather, currentWeather) || other.currentWeather == currentWeather)&&const DeepCollectionEquality().equals(other._sevenDayForecast, _sevenDayForecast)&&(identical(other.appSettings, appSettings) || other.appSettings == appSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentWeather,const DeepCollectionEquality().hash(_sevenDayForecast),appSettings);

@override
String toString() {
  return 'AppWeatherData(currentWeather: $currentWeather, sevenDayForecast: $sevenDayForecast, appSettings: $appSettings)';
}


}

/// @nodoc
abstract mixin class _$AppWeatherDataCopyWith<$Res> implements $AppWeatherDataCopyWith<$Res> {
  factory _$AppWeatherDataCopyWith(_AppWeatherData value, $Res Function(_AppWeatherData) _then) = __$AppWeatherDataCopyWithImpl;
@override @useResult
$Res call({
 CurrentWeather currentWeather, List<DailyForecast> sevenDayForecast, WeatherSettings appSettings
});


@override $CurrentWeatherCopyWith<$Res> get currentWeather;@override $WeatherSettingsCopyWith<$Res> get appSettings;

}
/// @nodoc
class __$AppWeatherDataCopyWithImpl<$Res>
    implements _$AppWeatherDataCopyWith<$Res> {
  __$AppWeatherDataCopyWithImpl(this._self, this._then);

  final _AppWeatherData _self;
  final $Res Function(_AppWeatherData) _then;

/// Create a copy of AppWeatherData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentWeather = null,Object? sevenDayForecast = null,Object? appSettings = null,}) {
  return _then(_AppWeatherData(
currentWeather: null == currentWeather ? _self.currentWeather : currentWeather // ignore: cast_nullable_to_non_nullable
as CurrentWeather,sevenDayForecast: null == sevenDayForecast ? _self._sevenDayForecast : sevenDayForecast // ignore: cast_nullable_to_non_nullable
as List<DailyForecast>,appSettings: null == appSettings ? _self.appSettings : appSettings // ignore: cast_nullable_to_non_nullable
as WeatherSettings,
  ));
}

/// Create a copy of AppWeatherData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentWeatherCopyWith<$Res> get currentWeather {
  
  return $CurrentWeatherCopyWith<$Res>(_self.currentWeather, (value) {
    return _then(_self.copyWith(currentWeather: value));
  });
}/// Create a copy of AppWeatherData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherSettingsCopyWith<$Res> get appSettings {
  
  return $WeatherSettingsCopyWith<$Res>(_self.appSettings, (value) {
    return _then(_self.copyWith(appSettings: value));
  });
}
}

// dart format on
