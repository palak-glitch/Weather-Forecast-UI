import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../Provider/Settings_Provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late bool _isCelsius;
  late String _selectedCity;
  late bool _symbolFirst;

  final List<String> cities = [
    'New York',
    'London',
    'Tokyo',
    'Mumbai',
    'Sydney',
  ];

  final List<String> locales = [
    'en_US',
    'fr_FR',
    'de_DE',
    'hi_IN',
    'ja_JP',
  ];

  @override
  void initState() {
    super.initState();
    final settings = Provider.of<SettingsProvider>(context, listen: false);
    _isCelsius = settings.isCelsius;
    _selectedCity = settings.selectedCity;
    _symbolFirst = settings.temperatureSymbolFirst;
  }

  void _saveSettings() {
    Provider.of<SettingsProvider>(context, listen: false)
        .updateSettings(_isCelsius, _selectedCity, _symbolFirst);
    Navigator.pop(context); // Go back to HomeScreen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        actions: [
          IconButton(icon: const Icon(Icons.save), onPressed: _saveSettings),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Temperature Unit',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: Text(_isCelsius ? 'Celsius (°C)' : 'Fahrenheit (°F)'),
              value: _isCelsius,
              onChanged: (value) {
                setState(() {
                  _isCelsius = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Select City',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              isExpanded: true,
              value: _selectedCity,
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _selectedCity = value;
                  });
                }
              },
              items:
                  cities
                      .map(
                        (city) =>
                            DropdownMenuItem(value: city, child: Text(city)),
                      )
                      .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
