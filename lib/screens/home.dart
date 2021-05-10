import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/appBar.dart';
import 'package:flutter_application_1/widgets/carousel/carouselIndicator.dart';
import 'package:flutter_application_1/widgets/listView/listViewArticles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          title: "JagatPlay",
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20),
              // child: CarouselHomeWidget(),
              child: CarouselIndicatorWidget(),
            ),
            ListViewArticlesWidget(),
          ]),
        ));
  }
}
