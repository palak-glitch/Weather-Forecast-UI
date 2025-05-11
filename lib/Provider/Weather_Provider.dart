// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:weatherforecast/data/models/weather_settings.dart';
// import 'package:weatherforecast/data/models/app_weather_data.dart';
//
// class WeatherProvider with ChangeNotifier {
//   AppWeatherData? _weatherData;
//   WeatherSettings _settings = const WeatherSettings(isCelsius: true, selectedCityName: 'New York');
//
//   WeatherProvider() {
//     _loadSettings();
//   }
//
//   AppWeatherData? get weatherData => _weatherData;
//   WeatherSettings get settings => _settings;
//
//   Future<void> _loadSettings() async {
//     final prefs = await SharedPreferences.getInstance();
//     final isCelsius = prefs.getBool('isCelsius') ?? true;
//     final selectedCity = prefs.getString('selectedCity') ?? 'New York';
//     _settings = WeatherSettings(isCelsius: isCelsius, selectedCityName: selectedCity);
//     await loadWeatherForCity(selectedCity);
//     notifyListeners();
//   }
//
//   Future<void> updateSettings(WeatherSettings newSettings) async {
//     _settings = newSettings;
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool('isCelsius', newSettings.isCelsius);
//     await prefs.setString('selectedCity', newSettings.selectedCityName);
//     await loadWeatherForCity(newSettings.selectedCityName);
//     notifyListeners();
//   }
//
//   Future<void> loadWeatherForCity(String city) async {
//     _weatherData = await WeatherMockData.getMockDataForCity(city, _settings);
//     notifyListeners();
//   }
// }
