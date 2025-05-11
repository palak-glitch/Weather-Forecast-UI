import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WeatherAnimatedBackground extends StatelessWidget {
  final String conditionCode; // e.g. 'sunny', 'rain', 'cloudy', etc.

  const WeatherAnimatedBackground({super.key, required this.conditionCode});

  String get animationAsset {
    switch (conditionCode.toLowerCase()) {
      case 'rain':
        return 'assets/lottie/rain.json';
      case 'cloudy':
        return 'assets/lottie/cloudy.json';
      case 'snow':
        return 'assets/lottie/snow.json';
      // case 'clear':
      case 'sunny':
      default:
        return 'assets/lottie/sunny.json';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      animationAsset,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
