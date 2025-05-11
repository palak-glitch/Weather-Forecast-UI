import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final form = FormGroup({
    'isCelsius': FormControl<bool>(value: true),
    'selectedCity': FormControl<String>(value: 'New York'),
  });

  final List<String> cities = [
    'New York',
    'London',
    'Tokyo',
    'Mumbai',
    'Sydney',
  ];

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    form.control('isCelsius').value = prefs.getBool('isCelsius') ?? true;
    form.control('selectedCity').value = prefs.getString('selectedCity') ?? 'New York';
  }

  Future<void> _saveSettings() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isCelsius', form.control('isCelsius').value);
    await prefs.setString('selectedCity', form.control('selectedCity').value);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Settings saved successfully.')),
    );
    // You can also trigger weather data update here based on the city
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ReactiveForm(
        formGroup: form,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ReactiveSwitchListTile(
                formControlName: 'isCelsius',
                title: const Text('Use Celsius'),
              ),
              const SizedBox(height: 16),
              ReactiveDropdownField<String>(
                formControlName: 'selectedCity',
                decoration: const InputDecoration(
                  labelText: 'Select City',
                  border: OutlineInputBorder(),
                ),
                items: cities
                    .map((city) => DropdownMenuItem(
                  value: city,
                  child: Text(city),
                ))
                    .toList(),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _saveSettings,
                child: const Text('Save Settings'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
