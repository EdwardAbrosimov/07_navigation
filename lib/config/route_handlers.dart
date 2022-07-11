import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../components/about_component.dart';
import '../components/home_component.dart';
import '../components/artist_component.dart';

var homeHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return const HomePage();
  },
);

var artistsHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return const ArtistsPage();
  },
);

var aboutHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return AboutPage(
      artist: parameters['artist'][0],
      about: parameters['about'][0],
    );
  },
);
