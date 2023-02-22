<!-- PROJECT LOGO -->
<h1 align="center">Weather_app</h1>
<img src="assets/logo_weather.png" alt="Logo" width="80" height="80" align="middle">

<!-- Présentation du projet -->
# Présentation du projet

Application météo permettant de consulter les conditions météorologiques actuelles et futures d'une ville en utilisant une API météo. 
Elle reprend l'exemple de nombreuses applications météo présentes sur tous les téléphones actuelles.


# Présentation des fonctionnalités

Page d'accueil :
  - Page d'accueil pour accéder à l'application

Page des favoris :
  - Page permettant de consulter les villes ajoutées en favori (reste en mémoire en quittant et en revenant sur l'application)
  - Message d'accueil
  - Image qui change en fonction de la journée
  - Menu permettant d'accéder aux paramètres, avoir des infos complémentaires sur les lieux rajoutés en favori et savoir qui est le créateur de l'application
  - Un bouton "+" permettant d'aller sur la page d'ajout des villes
  - Pour chaque ville rajoutée, affichée en liste, un bouton ">" permet d'aller sur la page de consultations des données météos

Page d'ajout des villes :
  - Barre de recherche qui appelle une API pour chercher les villes et affiche les suggestions dans une liste en dessous de la bar de recherche
  - Un floater bouton permettant d'avoir des informations sur comment chercher une ville
  - Un bouton microphone permettant d'utiliser la reconnaissance vocale afin d'autocompléter la barre de recherche avec sa voix

Page données météos :
  - Consultation de la météo de la ville choisie précédemment
  - Météo actuelle : température, vent, humidité, type de temps, date du jour, etc.
  - Prévisions météos de la journée heure par heure
  - Bouton permettant de situer la ville via une carte
  - Texte bouton qui permet d'aller sur les prévisions météos des jours à venir

Page Carte :
  - Situer la ville choisie sur une carte avec un pointeur

Page données prévisions météos futurs :
 - Météo détaillé de la météo du lendemain + 2 jours suivants
 - Consultation de la température maximale et minimale, humidité, vent, temps, etc.
 - Bouton d'information permettant de d'expliquer la consultation des prévisions météos futurs



<!-- Réalisé -->
# Réalisé avec ( + Version) :

* Flutter (docs, dev, widget, etc.) => 3.3.4
* Dart => 2.18.2
* DevTools => 2.15.0
* SharedPreferences
* Bloc/Provider



<!-- API utilisées -->
# API utilisées

Pour la réalisation de l'application "Weather_App", j'ai utilisé l'API "weatherapi.com" permettant de récupérer les données JSON d'une ville et de ses conditions météorologiques actuelles et futures.

Exemple de requêtes :
- Obtenir la liste des villes : https://api.weatherapi.com/v1/search.json?key=$apiKey&q=$query
- Obtenir la liste des conditions météorologiques : https://api.weatherapi.com/v1/forecast.json?key=$apikey&days=7&q=

Lien : 
  [Weatherapi](https://www.weatherapi.com/)

