
import 'package:flutter/cupertino.dart';

import '../Services/Settings_Service.dart';

class SettingsProvider extends ChangeNotifier {
  bool _isCelsius = true;
  String _selectedCity = '';
  bool _temperatureSymbolFirst = true;

  bool get isCelsius => _isCelsius;
  String get selectedCity => _selectedCity;
  bool get temperatureSymbolFirst => _temperatureSymbolFirst;

  SettingsProvider(Map<String, dynamic> initialSettings) {
    _isCelsius = initialSettings['isCelsius'] ?? true;
    _selectedCity = initialSettings['selectedCity'] ?? 'New York';
    _temperatureSymbolFirst = initialSettings['symbolFirst'] ?? true;
  }

  void updateSettings(bool newIsCelsius, String newCity, bool? symbolFirst) {
    _isCelsius = newIsCelsius;
    _selectedCity = newCity;
    if (symbolFirst != null) _temperatureSymbolFirst = symbolFirst;

  notifyListeners();
    final settingsService = SettingsService();
    settingsService.saveSettings(_isCelsius, _selectedCity, _temperatureSymbolFirst);
  }
}