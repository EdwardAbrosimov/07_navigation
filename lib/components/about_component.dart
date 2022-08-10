import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key, this.artist = "Unknown", this.info = "Unknown"});
  final String artist;
  final String info;
  @override
  Widget build(BuildContext context) {
    debugPrint(artist);
    // debugPrint(info);

    return Scaffold(
      appBar: AppBar(
        title: Text(artist),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(info),
      ),
    );
  }
}
