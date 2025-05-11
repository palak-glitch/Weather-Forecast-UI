import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../Provider/Settings_Provider.dart';
import '../../../../data/models/daily_forecast.dart';
import '../Pages/Forecast_Detail_Screen.dart';

class SevenDayForecastList extends StatelessWidget {
  final List<DailyForecast> forecasts;

  const SevenDayForecastList({super.key, required this.forecasts});

  @override
  Widget build(BuildContext context) {
    final settings = Provider.of<SettingsProvider>(context);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          final forecast = forecasts[index];
          final day = DateFormat.EEEE().format(forecast.date);
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ForecastDetailScreen(forecast: forecast),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: ListTile(
                leading: Image.asset(
                  'assets/icons/${forecast.iconId}.png',
                  width: 40,
                  height: 40,
                ),
                title: Text(day),
                subtitle: Text(forecast.conditionDescription),
                trailing: Text(
                  '${forecast.highTemp.toStringAsFixed(0)}${settings.isCelsius?'°C':'°F'} / ${forecast.lowTemp.toStringAsFixed(0)}${settings.isCelsius?'°C':'°F'}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
        childCount: forecasts.length,
      ),
    );
  }
}
