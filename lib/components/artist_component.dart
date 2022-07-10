import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:albums_route/config/routes.dart';

import 'package:flutter/services.dart';

class ArtistsPage extends StatefulWidget {
  static const routeName = '/artists';
  const ArtistsPage({Key key}) : super(key: key);
  @override
  State<ArtistsPage> createState() => _ArtistsPageState();
}

class _ArtistsPageState extends State<ArtistsPage> {
  List _artists = [];
  Future<void> readJson() async {
    final String content = await rootBundle.loadString('assets/artists.json');
    final data = await json.decode(content);
    setState(() {
      _artists = data;
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artists'),
      ),
      body: _artists.isNotEmpty
          ? Expanded(
              child: ListView.builder(
                  itemCount: _artists.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.account_circle_outlined),
                      trailing: const Icon(Icons.arrow_forward_outlined),
                      title: Text(_artists[index]['name']),
                      onTap: () {
                        Navigator.of(context).pushNamed(Routes.about +
                            '/${_artists[index]['name']}' +
                            '/${_artists[index]['about']}');
                      },
                    );
                  }))
          : Container(),
    );
  }
}
