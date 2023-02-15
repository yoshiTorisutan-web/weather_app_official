class Localisation {
  final int id;
  final String name;
  final String country;

  const Localisation(this.id, this.name, this.country);

  factory Localisation.fromGeoJson(Map<String, dynamic> json) {
    final Map<String, dynamic> city = json['city'] ?? {};
    final int id = city['id'];
    final String name = city['name'];
    final String country = city['country'];
    return Localisation(id, name, country);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'country': country,
    };
  }

  factory Localisation.fromJson(Map<String, dynamic> json) {
    return Localisation(json['id'], json['name'], json['country']);
  }
}