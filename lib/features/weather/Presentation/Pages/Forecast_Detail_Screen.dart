import 'package:flutter/material.dart';
import '../../../../data/models/daily_forecast.dart';
import 'package:intl/intl.dart';

import '../../../../data/models/hourly_forecast.dart';
import '../widgets/weatherBackgroundAnimation.dart';

class ForecastDetailScreen extends StatelessWidget {
  final DailyForecast forecast;

  const ForecastDetailScreen({super.key, required this.forecast});

  String formatTime(DateTime dt) => DateFormat('hh:mm a').format(dt);
  String formatHour(DateTime dt) => DateFormat('ha').format(dt);
  String formatDate(DateTime dt) => DateFormat('EEEE, MMM d').format(dt);


  @override
  Widget build(BuildContext context) {
    final day = DateFormat.EEEE().format(forecast.date);
    final date = DateFormat.yMMMMd().format(forecast.date);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(day),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Gradient or Animation
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF89F7FE), Color(0xFF66A6FF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          date,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white70,
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 100,
                          child: WeatherAnimatedBackground(conditionCode: forecast.conditionCode),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          forecast.conditionDescription,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${forecast.highTemp.toStringAsFixed(1)}° / ${forecast.lowTemp.toStringAsFixed(1)}°',
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Hourly Forecast (scrollable)
                  Text('Hourly Forecast', style: _sectionTitleStyle()),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: forecast.hourlyForecasts.length,
                      itemBuilder: (context, index) {
                        final hour = forecast.hourlyForecasts[index];
                        final time = DateFormat.Hm().format(hour.time);
                        return _HourlyForecastCard(time, hour);
                      },
                      separatorBuilder: (_, __) => const SizedBox(width: 12),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Additional Info Cards
                  _infoCard('🌄 Sunrise', DateFormat.Hm().format(forecast.sunrise)),
                  _infoCard('🌅 Sunset', DateFormat.Hm().format(forecast.sunset)),
                  _infoCard('☀️ UV Index', forecast.uvIndex.toString()),
                  _infoCard('🌧 Precipitation', '${(forecast.precipitationProbability * 100).round()}%'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoCard(String label, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Text(label, style: _infoStyle()),
          const Spacer(),
          Text(value, style: _infoStyle()),
        ],
      ),
    );
  }

  TextStyle _sectionTitleStyle() => const TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  TextStyle _infoStyle() => const TextStyle(
    fontSize: 16,
    color: Colors.white,
  );

  Widget _HourlyForecastCard(var time, HourlyForecast hourly) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: _infoStyle()),
          Image.asset(
            'assets/icons/${hourly.iconId}.png',
            height: 40,
          ),
          Text('${hourly.temperature}°', style: _infoStyle()),
        ],
      ),
    );
  }

}
