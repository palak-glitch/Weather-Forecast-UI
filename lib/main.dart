import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/Settings_Provider.dart';
import 'Services/Settings_Service.dart';
import 'features/weather/Presentation/Pages/Home_Screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final settingsService = SettingsService();
  final settings = await settingsService.loadSettings();
  runApp(MyApp(settings: settings));
}

class MyApp extends StatelessWidget {
  final Map<String, dynamic> settings;

  const MyApp({super.key,required this.settings});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsProvider(settings),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: HomeScreen(),
      ),
    );
  }
}


