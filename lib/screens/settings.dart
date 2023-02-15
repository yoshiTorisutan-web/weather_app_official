import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Paramètres météo'),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          padding: const EdgeInsets.only(top: 90),
          width: size.width,
          height: size.height,
          color: const Color(0xff081b25),
          child: ListView(
            padding: const EdgeInsets.all(8),
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const ListTile(
                title: Text("Unité", style: TextStyle(color: Colors.white)),
                subtitle: Text("°C", style: TextStyle(color: Colors.blue)),
                leading: Icon(Icons.thermostat, color: Colors.white),
              ),
              const ListTile(
                title: Text("Utiliser position actuelle",
                    style: TextStyle(color: Colors.white)),
                subtitle: Text("Refuser", style: TextStyle(color: Colors.blue)),
                leading: Icon(Icons.location_on, color: Colors.white),
              ),
              const ListTile(
                title: Text("Actualisation automatique",
                    style: TextStyle(color: Colors.white)),
                subtitle: Text("Toutes les 6 heures",
                    style: TextStyle(color: Colors.blue)),
                leading: Icon(Icons.refresh, color: Colors.white),
              ),
              const ListTile(
                title: Text("Notifications",
                    style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.notifications, color: Colors.white),
              ),
              const ListTile(
                title: Text("Alertes météos",
                    style: TextStyle(color: Colors.white)),
                subtitle: Text(
                    "Recevez des alertes météo et des badges sur le widget Météo, dans l'application et sur l'écran latéral.",
                    style: TextStyle(color: Colors.grey)),
                leading: Icon(Icons.campaign, color: Colors.white),
                trailing: Icon(Icons.toggle_on, color: Colors.white),
              ),
              const ListTile(
                title: Text("Ajout de l'icône Météo",
                    style: TextStyle(color: Colors.white)),
                subtitle: Text("Ajoutez l'icône Météo à l'écran Applis",
                    style: TextStyle(color: Colors.grey)),
                leading: Icon(Icons.sunny_snowing, color: Colors.white),
                trailing: Icon(Icons.toggle_off, color: Colors.white),
              ),
              const ListTile(
                title: Text("Service de personnalisation",
                    style: TextStyle(color: Colors.white)),
                subtitle: Text(
                    "Obtenez du contenu personnalisé basé sur l'utilisation de votre téléphone",
                    style: TextStyle(color: Colors.grey)),
                leading: Icon(Icons.edit, color: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: ListTile(
                  title: Text("A propos de l'application Météo",
                      style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.info, color: Colors.white),
                ),
              )
            ],
          )),
    );
  }
}