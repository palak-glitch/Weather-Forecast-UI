
import 'package:flutter/cupertino.dart';

import '../Services/Settings_Service.dart';

class SettingsProvider extends ChangeNotifier {
  bool _isCelsius = true;
  String _selectedCity = '';

  bool get isCelsius => _isCelsius;
  String get selectedCity => _selectedCity;

  SettingsProvider(Map<String, dynamic> initialSettings) {
    _isCelsius = initialSettings['isCelsius'] ?? true;
    _selectedCity = initialSettings['selectedCity'] ?? 'New York';
  }

  void updateSettings(bool newIsCelsius, String newCity) {
    _isCelsius = newIsCelsius;
    _selectedCity = newCity;
    notifyListeners();
    final settingsService = SettingsService();
    settingsService.saveSettings(_isCelsius, _selectedCity);
  }
}