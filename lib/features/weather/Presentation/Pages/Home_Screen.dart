import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../data/models/app_weather_data.dart';
import '../widgets/ForcastList_widget.dart';
import '../widgets/current_weather_panel.dart';
import '../widgets/weatherBackgroundAnimation.dart';

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
    try {
      final rawJson = await rootBundle.loadString(
        'lib/data/mock/new_york_weather.json',
      );
      final jsonMap = json.decode(rawJson);
      final data = AppWeatherData.fromJson(jsonMap);
      debugPrint('Loaded data: $data'); // Debugging line
      setState(() {
        _weatherData = data;
      });
    } catch (e, stack) {
      debugPrint('Error loading mock weather data: $e\n$stack');
    }
  }

  @override
  Widget build(BuildContext context) {
    final weather = _weatherData?.currentWeather;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF6D9EFF), Color(0xFF90CAF9)],
          ),
        ),
        child:
            _weatherData == null
                ? const Center(child: CircularProgressIndicator())
                : CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      pinned: true,
                      expandedHeight: 250.0,
                      flexibleSpace: FlexibleSpaceBar(
                        title: Text(
                          '${weather!.city} • ${weather.temperature.toStringAsFixed(1)}°',
                          style: const TextStyle(color: Colors.black),
                        ),
                        background: WeatherAnimatedBackground(
                          conditionCode: weather.conditionCode,
                        ),
                        // Image.asset(
                        //   'assets/images/${weather.iconId}.png',
                        //   fit: BoxFit.cover,
                        //   height: double.infinity,
                        //   width: double.infinity,
                        // ),
                      ),
                      actions: [
                        IconButton(
                          icon: const Icon(Icons.settings, color: Colors.black),
                          onPressed: () {
                            // Navigate to settings
                          },
                        ),
                      ],
                    ),

                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Column(
                          children: [
                            CurrentWeatherPanel(weather: weather),
                            SizedBox(height: 10,),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                '7-Day Forecast',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SevenDayForecastList(forecasts: _weatherData!.sevenDayForecast),

                  ],
                ),
      ),
    );
  }
}
