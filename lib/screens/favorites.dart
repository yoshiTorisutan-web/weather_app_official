import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import 'add_city.dart';
import 'home.dart';

class Favorites extends StatelessWidget {
  final String selectedCity;

  const Favorites({Key? key, required this.selectedCity}) : super(key: key);

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
      image = "assets/pleine-lune.png";
    }

    return Scaffold(
      backgroundColor: const Color(0xff081b25),
      appBar: AppBar(
        title: const Text(
          "Manage cities",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Hubballi',
              color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(20.0),
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
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 210.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "❤️ Favorites Places ❤️",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hubballi',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            itemCount: 1,
            padding: const EdgeInsets.only(top: 240),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: const Color(0xff56CCF2),
                elevation: 5,
                margin: const EdgeInsets.only(
                    top: 10, left: 30, right: 30, bottom: 10),
                child: selectedCity.isEmpty
                    ? Container()
                    : ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        contentPadding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 15, left: 15),
                        leading: const CircleAvatar(
                            backgroundColor: Color.fromARGB(0, 0, 0, 0),
                            child: Icon(Icons.location_on,
                                color: Color.fromARGB(255, 254, 254, 254))),
                        title: Text(
                          selectedCity,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Hubballi',
                          ),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home(
                                            selectedCity: selectedCity,
                                          ))); // Navigue vers la page WeatherPage
                            },
                            icon: const Icon(Icons.chevron_right,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 30)),
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
