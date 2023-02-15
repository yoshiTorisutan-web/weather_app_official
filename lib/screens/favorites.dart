import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import 'add_city.dart';
import 'home.dart';
import 'home_test.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final now = TimeOfDay.now();
    String image;

    if (now.hour < 8) {
      image = "assets/morning.jpg";
    } else if (now.hour < 12) {
      image = "assets/afternoon.jpg";
    } else if (now.hour < 18) {
      image = "assets/evening.jpg";
    } else {
      image = "assets/night.jpg";
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Favorite places'),
        centerTitle: true,
        backgroundColor: const Color(0xff081b25),
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
      body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: const Color(0xff081b25),
                elevation: 5,
                margin: const EdgeInsets.all(30),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  contentPadding: const EdgeInsets.all(15),
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
          )),
      drawer: const Drawer(child: MainDrawer()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => WeatherScreen()));
        },
        backgroundColor: const Color(0xff081b25),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
    );
  }
}
