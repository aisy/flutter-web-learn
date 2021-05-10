import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/appBar.dart';
import 'package:flutter_application_1/widgets/categoryTag.dart';

class ChannelsScreen extends StatefulWidget {
  @override
  _ChannelsScreenState createState() => _ChannelsScreenState();
}

class _ChannelsScreenState extends State<ChannelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "Channels",
      ),
      body: Container(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.height / 300,
          children: <Widget>[
            CategoryTagWidget(
              textColor: Colors.white,
              textButton: "PC",
            ),
            CategoryTagWidget(
              textColor: Colors.white,
              textButton: "Playstation",
              gradientColor: [Colors.lightBlue[900], Colors.lightBlue[800]],
            ),
            CategoryTagWidget(
              textColor: Colors.white,
              textButton: "Nintendo",
              gradientColor: [Colors.red[900], Colors.red[800]],
            ),
            CategoryTagWidget(
              textColor: Colors.white,
              textButton: "Gaming gears",
              gradientColor: [Colors.green[900], Colors.green[800]],
            ),
            CategoryTagWidget(
              textColor: Colors.white,
              textButton: "Top Lists",
              gradientColor: [Colors.indigo[900], Colors.indigo[800]],
            ),
          ],
        ),
      ),
    );
  }
}
