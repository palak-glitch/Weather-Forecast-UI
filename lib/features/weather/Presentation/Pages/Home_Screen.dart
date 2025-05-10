import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeatherHomeScreen extends StatelessWidget {
  const WeatherHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final weather = context.watch<WeatherProvider>().weatherData;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(weather.currentWeather.city),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/weather/${weather.currentWeather.iconId}.jpg',
                    fit: BoxFit.cover,
                  ),
                  Container(color: Colors.black26),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 48),
                      child: Text(
                        '${weather.currentWeather.temperature}°',
                        style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () => context.router.push(SettingsRoute()),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: _CurrentWeatherDetails(weather.currentWeather),
            ),
          ),
        ],
      ),
    );
  }
}


class _CurrentWeatherDetails extends StatelessWidget {
  final CurrentWeather weather;

  const _CurrentWeatherDetails(this.weather);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _MetricRow(label: 'Humidity', value: '${weather.humidity}%'),
        _MetricRow(label: 'Wind', value: '${weather.windSpeed} km/h ${weather.windDirection}'),
        _MetricRow(label: 'Feels Like', value: '${weather.feelsLike}°'),
        _MetricRow(label: 'Pressure', value: '${weather.pressure} hPa'),
        _MetricRow(label: 'Visibility', value: '${weather.visibility} km'),
      ],
    );
  }
}

class _MetricRow extends StatelessWidget {
  final String label;
  final String value;

  const _MetricRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Expanded(child: Text(label, style: Theme.of(context).textTheme.bodyMedium)),
          Text(value, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

