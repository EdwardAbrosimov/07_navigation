import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key, required this.artist, required this.about});
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
        child: Text(widget.about),
      ),
    );
  }
}
