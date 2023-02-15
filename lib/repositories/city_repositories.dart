import 'dart:convert';

import 'package:http/http.dart';

import '../models/localisation.dart';


class LocalisationRepository {
  Future<List<Localisation>> fetchLocalisations(String query) async {
    const String apiKey = 'a7441749311fcfb23b9d1dc5ecb7048e'; 
    final Response response = await get(Uri.parse('https://api.openweathermap.org/data/2.5/find?q=$query&appid=$apiKey'));
    if (response.statusCode == 200) {
      final List<Localisation> localisations = []; // Liste que la méthode va renvoyer

      // Transformation du JSON (String) en Map<String, dynamic>
      final Map<String, dynamic> json = jsonDecode(response.body);
      if (json.containsKey("city")) {
        // Récupération des "features"
        final List<dynamic> features = json['city'];

        // Transformation de chaque "feature" en objet de type "Address"
        for (Map<String, dynamic> feature in features) {
          final Localisation localisation = Localisation.fromGeoJson(feature);
          localisations.add(localisation);
        }
      }
      return localisations;
    } else {
      throw Exception('Failed to load localisations');
    }
  }
}