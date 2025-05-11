import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../../data/models/current_weather.dart';

class CurrentWeatherPanel extends StatelessWidget {
  final CurrentWeather weather;

  const CurrentWeatherPanel({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Card(
                color: Colors.white.withOpacity(0.2),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _infoTile("${weather.humidity}%", "Humidity"),
                      _infoTile(
                        "${weather.windSpeed} km/h ${weather.windDirection}",
                        "Wind",
                      ),
                      _infoTile(
                        "${weather.feelsLike.toStringAsFixed(1)}°",
                        "Feels Like",
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Card(
                color: Colors.white.withOpacity(0.2),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _infoTile("${weather.pressure} hPa", "Pressure"),
                      _infoTile("${weather.visibility} km", "Visibility"),
                      _infoTile(weather.conditionDescription, "Condition"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoTile(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.white70),
        ),
      ],
    );
  }
}
