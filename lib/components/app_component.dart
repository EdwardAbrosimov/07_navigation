import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../config/application.dart';
import '../../config/routes.dart';

class AppComponent extends StatefulWidget {
  const AppComponent({super.key});

  @override
  State<AppComponent> createState() => _AppComponentState();
}

class _AppComponentState extends State<AppComponent> {
  _AppComponentState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }
  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'Music routes',
      initialRoute: Routes.home,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      onGenerateRoute: Application.router.generator,
    );
    return app;
  }
}
