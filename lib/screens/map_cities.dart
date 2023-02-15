import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'home.dart';

void main() {
  runApp(const CitiesMap());
}

class CitiesMap extends StatefulWidget {
  const CitiesMap({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CitiesMapState createState() => _CitiesMapState();
}

class _CitiesMapState extends State<CitiesMap> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: Center(
          child: SizedBox(
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(47.478419, -0.563166),
                zoom: 13,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      width: 45.0,
                      height: 45.0,
                      point: LatLng(47.478419, -0.563166),
                      builder: (context) => IconButton(
                        icon: const Icon(Icons.location_on),
                        color: Colors.red,
                        iconSize: 45.0,
                        onPressed: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Home()));
          },
          backgroundColor: const Color.fromARGB(197, 0, 0, 0),
          child: const Icon(Icons.keyboard_return,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}