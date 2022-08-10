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

var aboutHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    String? artist = params["artist"]?.first;
    String? info = params["info"]?.first;
    return AboutPage(
      artist: artist ?? 'Unknown',
      info: info ?? 'Unknown',
    );
  },
);
