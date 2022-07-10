import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key key, this.artist, this.about}) : super(key: key);
  final String artist;
  final String about;
  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.artist),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(child: Text(widget.about)),
      ),
    );
  }
}
