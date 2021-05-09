import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainNavigationBottom.dart';
import 'package:flutter_application_1/router_constants.dart';

import 'router.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainHomeBottomNavigation(),
      // initialRoute: SplashView,
      // onGenerateRoute: router.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}
