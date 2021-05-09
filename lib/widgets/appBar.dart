import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  AppBarWidget({Key key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 5,
      title: Text(
        "JagatPlay",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
      // leading: GestureDetector(
      //   onTap: () {},
      //   child: Icon(Icons.menu),
      // ),
    );
  }
}
