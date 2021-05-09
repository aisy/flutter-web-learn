import 'package:flutter/material.dart';

// import nama route
import 'package:flutter_application_1/router_constants.dart';

// import screen
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/account.dart';
import 'package:flutter_application_1/screens/splash.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // menggunakan switch untuk berpindah screen
  switch (settings.name) {
    case SplashView:
      return MaterialPageRoute(builder: (_) => SplashScreen());

    // case screen HomeView akan memanggil class HomeScreen
    case HomeView:
      return MaterialPageRoute(builder: (_) => HomeScreen());

    // case screen AccountView akan memanggil class AccountScreen
    case AccountView:
      return MaterialPageRoute(builder: (_) => AccountScreen());

    // default screen
    default:
      return MaterialPageRoute(builder: (_) => HomeScreen());
  }
}
