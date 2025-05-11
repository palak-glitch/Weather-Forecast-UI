import 'package:intl/intl.dart';

double convertTemperature(double? tempCelsius, bool isCelsius) {
  if (tempCelsius == null) return 0;
  return isCelsius ? tempCelsius : (tempCelsius * 9 / 5) + 32;
}

String formatTemperature({
  required double? tempCelsius,
  required bool isCelsius,
  required bool symbolFirst,
  required String locale,
}) {
  if (tempCelsius == null) return '--';

  final temp = convertTemperature(tempCelsius, isCelsius);
  final unit = isCelsius ? '°C' : '°F';
  final formatter = NumberFormat('#0.0', locale);
  final formattedTemp = formatter.format(temp);

  return symbolFirst ? '$unit $formattedTemp' : '$formattedTemp $unit';
}

