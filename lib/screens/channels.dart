import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/appBar.dart';

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
    ));
  }
}
