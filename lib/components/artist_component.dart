import 'package:flutter/material.dart';

class ArtistsPage extends StatefulWidget {
  static const routeName = '/artists';
  const ArtistsPage({Key key}) : super(key: key);
  @override
  State<ArtistsPage> createState() => _ArtistsPageState();
}

class _ArtistsPageState extends State<ArtistsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artists'),
      ),
    );
  }
}
