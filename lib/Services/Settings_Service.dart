import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  static const String _keyIsCelsius = 'isCelsius';
  static const String _keySelectedCity = 'selectedCity';
  static const String _keysymbolFirst = 'symbolFirst';

  Future<void> saveSettings(bool isCelsius, String selectedCity, bool symbolFirst) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyIsCelsius, isCelsius);
    await prefs.setString(_keySelectedCity, selectedCity);
    await prefs.setBool(_keysymbolFirst, symbolFirst);
  }

  Future<Map<String, dynamic>> loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    final isCelsius = prefs.getBool(_keyIsCelsius) ?? true;  // Default to true (Celsius)
    final selectedCity = prefs.getString(_keySelectedCity) ?? 'New York';  // Default city
    final symbolFirst = prefs.getBool(_keysymbolFirst);
    return {
      'isCelsius': isCelsius,
      'selectedCity': selectedCity,
      'symbolFirst': symbolFirst,
    };
  }
}
