import 'package:intl/intl.dart';

double convertTemperature(double? tempCelsius, bool isCelsius) {
  if (tempCelsius == null) return 0;
  return isCelsius ? tempCelsius : (tempCelsius * 9 / 5) + 32;
}
