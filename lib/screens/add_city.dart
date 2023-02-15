import 'package:flutter/material.dart';
import 'package:weather_app/repositories/city_repositories.dart';

import '../models/localisation.dart';

class SearchCity extends StatefulWidget {
  const SearchCity({super.key});

  @override
  State<SearchCity> createState() => _SearchCityState();
}

class _SearchCityState extends State<SearchCity> {
  List<Localisation> _localisations = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Find a place'),
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.mic,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color(0xff081b25),
        child: Form(
          child: Column(
            children: <Widget>[
              Card(
                elevation: 0,
                color: Colors.transparent,
                margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  onChanged: (value) async {
                    if (value.length >= 3) {
                      final LocalisationRepository localisationRepository =
                          LocalisationRepository();
                      List<Localisation> localisations =
                          await localisationRepository
                              .fetchLocalisations(value);
                      setState(() {
                        _localisations = localisations;
                      });
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.location_on,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 2)),
                    filled: true,
                    fillColor: const Color.fromARGB(61, 255, 255, 255),
                    hintText: 'ex : Angers',
                    hintStyle: const TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Hubballi',
                        fontSize: 20),
                    labelText: 'Lieu',
                    labelStyle: const TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Hubballi',
                        fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                  child: Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white, width: 2)),
                elevation: 0,
                color: const Color.fromARGB(61, 255, 255, 255),
                margin: const EdgeInsets.only(
                    top: 15, left: 25, right: 25, bottom: 100),
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemCount: _localisations.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(height: 0),
                  itemBuilder: (BuildContext context, int index) {
                    final Localisation localisation = _localisations[index];
                    return ListTile(
                      title: Text(localisation.name,
                          style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                      subtitle: Text(localisation.country,
                          style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                      onTap: () {
                        Navigator.of(context).pop(localisation);
                      },
                    );
                  },
                ),
              )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                    title: const Text('Infos Recherche Lieu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            fontFamily: 'Hubballi')),
                    content: const Text(
                        'Découvrer la météo de n\'importe quelle ville de France, d\'Europe et du Monde (ex : Paris, Madrid, New-York).',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Hubballi',
                            fontSize: 20)),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Compris'),
                        child: const Text(
                          'Compris',
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Hubballi',
                              fontSize: 19),
                        ),
                      ),
                    ],
                  ));
        },
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        child: const Icon(Icons.info, color: Color(0xff081b25)),
      ),
    );
  }
}
