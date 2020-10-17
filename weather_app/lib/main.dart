import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/screens/splahScreen.dart';
import 'package:weather_app/theme/theme.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: lighttheme(),
      darkTheme: darktheme(),
      themeMode: ThemeMode.system,
      home: Splashscreen(),
    );
  }
}
