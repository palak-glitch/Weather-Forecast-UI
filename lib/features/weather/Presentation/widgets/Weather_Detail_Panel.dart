// import 'package:flutter/material.dart';
//
// class WeatherDetailPanel extends StatelessWidget {
//   final WeatherModel weather;
//
//   const WeatherDetailPanel({super.key, required this.weather});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.all(16),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             _metricRow('Feels Like', '${weather.feelsLike}°C'),
//             _metricRow('Humidity', '${weather.humidity}%'),
//             _metricRow('Wind', '${weather.windSpeed} km/h ${weather.windDirection}'),
//             _metricRow('Pressure', '${weather.pressure} hPa'),
//             _metricRow('Visibility', '${weather.visibility} m'),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _metricRow(String label, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
//           Text(value),
//         ],
//       ),
//     );
//   }
// }

