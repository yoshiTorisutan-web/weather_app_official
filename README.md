# weather_app_official


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Weather_app</h3>

  <p align="center">
    An awesome README template to jumpstart your projects!
  </p>
</div>


<!-- Présentation du projet -->
# Présentation du projet



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



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com
[Flutter-url]: https://flutter.dev
