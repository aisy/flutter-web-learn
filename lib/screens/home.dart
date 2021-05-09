import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/appBar.dart';
import 'package:flutter_application_1/widgets/carousel/carouselHome.dart';
import 'package:flutter_application_1/widgets/carousel/carouselIndicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "JagatPlay",
      ),
      body: Column(children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 20),
          // child: CarouselHomeWidget(),
          child: CarouselIndicatorWidget(),
        ),
        Container(
          padding: EdgeInsets.only(left: 20.0),
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 160.0,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
