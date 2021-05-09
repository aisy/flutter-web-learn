import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/appBar.dart';
import 'package:flutter_application_1/widgets/carousel/carouselHome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Column(children: <Widget>[
        CarouselHomeWidget(),
      ]),
    );
  }
}
