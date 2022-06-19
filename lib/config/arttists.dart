import 'dart:async';
import 'package:albums_route/fetch_file.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Artist {
  final String name;
  final String link;
  final String about;
  Artist({this.name, this.link, this.about});

  factory Artist.fromJson(Map<String, dynamic> data) {
    return Artist(
        name: data['name'] as String,
        link: data['link'] as String,
        about: data['about'] as String);
  }
}

class Artists {
  Artists() {
    Future<String> future = Future(() {
      print("Выполнение Future");
      return "Hello Future"; // возвращаем строку
    });

    Future<String> artist_list = fetchFileFromAssets('assets/artists.json');
    var objsJson = artist_list.then((value) {
      print(value);
    });

    // future.then((value) {
    //   print("Из Future получено значение: $value");
    // });

    print("Main ends");
  }
}
