import 'package:flutter/material.dart';

class InfoFavorites extends StatelessWidget {
  const InfoFavorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Lieux favoris'),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          padding: const EdgeInsets.only(top: 90),
          width: size.width,
          height: size.height,
          color: const Color(0xff081b25),
          child: const Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Text(
                'Votre lieu favori sera utilisé pour fournir des informations météorologiques. Vous pouvez changer de lieu favori dans votre liste de lieux.',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 16)),
          )),
    );
  }
}