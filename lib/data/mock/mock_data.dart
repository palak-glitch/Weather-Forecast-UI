import 'dart:convert';
import '../models/app_weather_data.dart';

class MockWeatherData {
  static AppWeatherData get mumbai => AppWeatherData.fromJson(
    jsonDecode(_mumbaiJson) as Map<String, dynamic>,
  );

  static AppWeatherData get london => AppWeatherData.fromJson(
    jsonDecode(_londonJson) as Map<String, dynamic>,
  );

  static AppWeatherData get tokyo => AppWeatherData.fromJson(
    jsonDecode(_tokyoJson) as Map<String, dynamic>,
  );

  static AppWeatherData get newyork => AppWeatherData.fromJson(
    jsonDecode(_newyorkJson) as Map<String, dynamic>,
  );

  static const String _mumbaiJson = '''{
    "currentWeather": {
      "city": "Mumbai",
      "temperature": 33.0,
      "conditionCode": "sunny",
      "conditionDescription": "Sunny",
      "humidity": 60,
      "windSpeed": 5.2,
      "windDirection": "NW",
      "feelsLike": 36.0,
      "pressure": 1012.0,
      "visibility": 8000.0,
      "iconId": "01d"
    },
    "sevenDayForecast": [
      {
        "date": "2025-05-10T00:00:00.000",
        "highTemp": 34.0,
        "lowTemp": 28.0,
        "conditionCode": "sunny",
        "conditionDescription": "Clear",
        "iconId": "01d",
        "precipitationProbability": 0.0,
        "uvIndex": 9,
        "sunrise": "2025-05-10T06:00:00.000",
        "sunset": "2025-05-10T18:45:00.000",
        "hourlyForecasts": [
          {
            "time": "2025-05-10T09:00:00.000",
            "temperature": 30.0,
            "conditionCode": "sunny",
            "iconId": "01d"
          }
        ]
      }
    ],
    "appSettings": {
      "isCelsius": true,
      "selectedCityName": "Mumbai"
    }
  }''';

  static const String _londonJson = '''{
    "currentWeather": {
      "city": "London",
      "temperature": 12.5,
      "conditionCode": "rain",
      "conditionDescription": "Rain Showers",
      "humidity": 85,
      "windSpeed": 15.3,
      "windDirection": "W",
      "feelsLike": 10.0,
      "pressure": 1001.0,
      "visibility": 5000.0,
      "iconId": "09d"
    },
    "sevenDayForecast": [
      {
        "date": "2025-05-10T00:00:00.000",
        "highTemp": 15.0,
        "lowTemp": 8.0,
        "conditionCode": "rain",
        "conditionDescription": "Rain Showers",
        "iconId": "09d",
        "precipitationProbability": 80.0,
        "uvIndex": 2,
        "sunrise": "2025-05-10T05:15:00.000",
        "sunset": "2025-05-10T20:10:00.000",
        "hourlyForecasts": [
          {
            "time": "2025-05-10T12:00:00.000",
            "temperature": 12.0,
            "conditionCode": "rain",
            "iconId": "09d"
          }
        ]
      }
    ],
    "appSettings": {
      "isCelsius": true,
      "selectedCityName": "London"
    }
  }''';

  static const String _tokyoJson = '''{
    "currentWeather": {
      "city": "Tokyo",
      "temperature": 20.0,
      "conditionCode": "cloudy",
      "conditionDescription": "Cloudy",
      "humidity": 70,
      "windSpeed": 8.5,
      "windDirection": "E",
      "feelsLike": 19.0,
      "pressure": 1015.0,
      "visibility": 9000.0,
      "iconId": "03d"
    },
    "sevenDayForecast": [
      {
        "date": "2025-05-10T00:00:00.000",
        "highTemp": 22.0,
        "lowTemp": 16.0,
        "conditionCode": "cloudy",
        "conditionDescription": "Overcast Clouds",
        "iconId": "03d",
        "precipitationProbability": 20.0,
        "uvIndex": 5,
        "sunrise": "2025-05-10T04:45:00.000",
        "sunset": "2025-05-10T18:30:00.000",
        "hourlyForecasts": [
          {
            "time": "2025-05-10T15:00:00.000",
            "temperature": 20.0,
            "conditionCode": "cloudy",
            "iconId": "03d"
          }
        ]
      }
    ],
    "appSettings": {
      "isCelsius": true,
      "selectedCityName": "Tokyo"
    }
  }''';

  static const String _newyorkJson = '''{
    "currentWeather": {
    "city": "New York",
    "temperature": 18.5,
    "conditionCode": "cloudy",
    "conditionDescription": "Cloudy",
    "humidity": 65,
    "windSpeed": 12.0,
    "windDirection": "NW",
    "feelsLike": 17.0,
    "pressure": 1015.0,
    "visibility": 10.0,
    "iconId": "cloud"
  },
    "sevenDayForecast": [
      {
        "date": "2025-05-10T00:00:00.000",
        "highTemp": 22.0,
        "lowTemp": 16.0,
        "conditionCode": "cloudy",
        "conditionDescription": "Overcast Clouds",
        "iconId": "03d",
        "precipitationProbability": 20.0,
        "uvIndex": 5,
        "sunrise": "2025-05-10T04:45:00.000",
        "sunset": "2025-05-10T18:30:00.000",
        "hourlyForecasts": [
          {
            "time": "2025-05-10T15:00:00.000",
            "temperature": 20.0,
            "conditionCode": "cloudy",
            "iconId": "03d"
          }
        ]
      }
    ],
   "appSettings": {
    "isCelsius": true,
    "selectedCityName": "New York"
  }
  }''';

}
