import 'package:flutter/material.dart';
import 'package:weather_app/screens/add_city.dart';
import 'package:weather_app/screens/favorites.dart';
import 'package:weather_app/screens/forecast.dart';
import 'package:weather_app/screens/home.dart';
import 'package:weather_app/screens/map_cities.dart';

import 'screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/welcome': (context) => const Start(),
        '/favorites': (context) => const Favorites(selectedCity: ''),
        '/add_city': (context) => const SearchCity(selectedCity: ''),
        '/home': (context) => const Home(selectedCity: ''),
        '/forecast': (context) => const DetailPage(),
        '/map': (context) => const MapScreen(selectedCity: ''),
      },
      initialRoute: '/welcome',
    );
  }
}