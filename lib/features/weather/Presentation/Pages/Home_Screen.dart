import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../data/models/app_weather_data.dart';
import '../widgets/current_weather_panel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppWeatherData? _weatherData;

  @override
  void initState() {
    super.initState();
    loadMockWeather();
  }

  Future<void> loadMockWeather() async {
    final rawJson = await rootBundle.loadString(
        'lib/features/weather/weather_mock_data/new_york_weather.json');
    final jsonMap = json.decode(rawJson);
    final data = AppWeatherData.fromJson(jsonMap);
    setState(() {
      _weatherData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    final weather = _weatherData?.currentWeather;

    return Scaffold(
      body: _weatherData == null
          ? const Center(child: CircularProgressIndicator())
          : CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                '${weather!.city} • ${weather.temperature.toStringAsFixed(1)}°',
                style: const TextStyle(color: Colors.white),
              ),
              background: Image.asset(
                'assets/images/${weather.iconId}.jpg',
                fit: BoxFit.cover,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  // Navigate to settings
                },
              )
            ],
          ),
          SliverToBoxAdapter(
            child: CurrentWeatherPanel(weather: weather),
          )
        ],
      ),
    );
  }
}
