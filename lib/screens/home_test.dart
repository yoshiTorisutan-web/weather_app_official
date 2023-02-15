import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String city = "Paris";
  String weather = "Loading...";
  String humidity = "";
  String wind = "";
  String minTemp = "";
  String maxTemp = "";

  String API_KEY =
      'a7441749311fcfb23b9d1dc5ecb7048e'; 

  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  void fetchWeather() async {
    var uri = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$API_KEY&units=metric');
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      setState(() {
        weather = data['main']['temp'].toString();
        humidity = data['main']['humidity'].toString();
        wind = data['wind']['speed'].toString();
        minTemp = data['main']['temp_min'].toString();
        maxTemp = data['main']['temp_max'].toString();
      });
    } else {
      setState(() {
        weather = "Error getting weather data";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Temperature in $city: $weather °C',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Humidity: $humidity%',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Wind: $wind m/s',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Min. Temp.: $minTemp °C',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Max. Temp.: $maxTemp °C',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
