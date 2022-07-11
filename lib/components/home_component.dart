import 'package:albums_route/config/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          addAutomaticKeepAlives: true,
          padding: const EdgeInsets.all(5),
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Artists'),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.artists);
              },
            )
          ],
        ),
      ),
    );
  }
}
