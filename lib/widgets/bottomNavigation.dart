import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.article), label: "Channels"),
        BottomNavigationBarItem(icon: Icon(Icons.rate_review), label: "Review"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
      ],
    );
  }
}
