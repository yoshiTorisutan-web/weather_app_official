import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../constants.dart';
import '../widgets/drawer.dart';
import '../widgets/weather_item.dart';
import 'add_city.dart';
import 'home.dart';

class Favorites extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final dailyForecastWeather;

  const Favorites({Key? key, this.dailyForecastWeather}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  final Constants _constants = Constants();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final now = TimeOfDay.now();
    String image;

    if (now.hour >= 0 && now.hour < 6) {
      image = "assets/pleine-lune.png";
    } else if (now.hour >= 6 && now.hour < 19) {
      image = "assets/soleil.png";
    } else {
      image = "assets/soleil.jpg";
    }

    return Scaffold(
      backgroundColor: const Color(0xff081b25),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SearchCity()));
            },
          )
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 20,
            right: 30,
            left: 20,
            child: Container(
              height: 150,
              width: size.width * .7,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.center,
                  colors: [Color(0xff2F80ED), Color(0xff56CCF2)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(.1),
                    offset: const Offset(0, 25),
                    blurRadius: 3,
                    spreadRadius: -10,
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    width: 70,
                    left: 30,
                    top: 40,
                    // ignore: prefer_interpolation_to_compose_strings
                    child: Image.asset(image),
                  ),
                  const Positioned(
                      top: 80,
                      right: 41,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "How are you today ?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Hubballi'),
                        ),
                      )),
                  Positioned(
                    top: 45,
                    right: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Hello, Tristan !",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Hubballi',
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 190,
                    left: 95,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Favorites Places ❤️",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Hubballi',
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: const Color(0xff56CCF2),
                elevation: 5,
                margin: const EdgeInsets.only(
                    top: 250, left: 30, right: 30, bottom: 30),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  contentPadding: const EdgeInsets.only(
                      top: 5, bottom: 5, right: 15, left: 15),
                  leading: const CircleAvatar(
                      backgroundColor: Color.fromARGB(0, 0, 0, 0),
                      child: Icon(Icons.location_on,
                          color: Color.fromARGB(255, 254, 254, 254))),
                  title: const Text(
                    "Angers",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Hubballi',
                    ),
                  ),
                  subtitle: const Text(
                    "France",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Hubballi',
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const Home()));
                      },
                      icon: const Icon(Icons.chevron_right,
                          color: Color.fromARGB(255, 255, 255, 255), size: 30)),
                ),
              );
            },
          )
        ],
      ),
      drawer: const Drawer(child: MainDrawer()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(Icons.delete, color: Color(0xff081b25)),
      ),
    );
  }
}
