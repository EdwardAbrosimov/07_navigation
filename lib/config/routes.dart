import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handlers.dart';

class Routes {
  static String home = "/";
  static String artists = "/artists";
  static String about = "/about";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      debugPrint("ROUTE WAS NOT FOUND !!!");
      return;
    });
    router.define(home, handler: homeHandler);
    router.define(artists,
        handler: artistsHandler, transitionType: TransitionType.fadeIn);
    router.define(about,
        handler: aboutHandler, transitionType: TransitionType.inFromRight);
  }
}
