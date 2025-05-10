import 'package:flutter/material.dart';
import '../../../../data/models/current_weather.dart';

class CurrentWeatherPanel extends StatelessWidget {
  final CurrentWeather weather;

  const CurrentWeatherPanel({super.key, required this.weather});

  Widget _metric(String label, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.black12,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        shrinkWrap: true,
        children: [
          _metric("Humidity", "${weather.humidity}%"),
          _metric("Wind", "${weather.windSpeed} km/h ${weather.windDirection}"),
          _metric("Feels Like", "${weather.feelsLike}°"),
          _metric("Pressure", "${weather.pressure} hPa"),
          _metric("Visibility", "${weather.visibility} km"),
          _metric("Condition", weather.conditionDescription),
        ],
      ),
    );
  }
}
