import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../components/about_component.dart';
import '../components/home_component.dart';
import '../components/artist_component.dart';

var homeHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const HomePage();
  },
);

var artistsHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const ArtistsPage();
  },
);

class AboutArguments {
  final String artist;
  final String info;

  AboutArguments(this.artist, this.info);
}

var aboutHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    final args = ModalRoute.of(context!)?.settings.arguments as AboutArguments;
    return AboutPage(
      artist: args.artist,
      info: args.info,
    );
  },
);
