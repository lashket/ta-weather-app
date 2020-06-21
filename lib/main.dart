import 'package:flutter/material.dart';
import 'package:taweather/screens/loading/loading_screen.dart';
import 'package:taweather/screens/weather/weather_screen.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        '/weather_info': (context) => WeatherScreen()
      },
      title: 'Weather app',
      theme: ThemeData(
        primaryColor: Color(0xff182837),
        primaryColorDark: Color(0xff182837),
        accentColor: Color(0xffF29E2E),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}







