import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  AppBarWidget({Key key, this.title}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 3,
      title: Text(
        "${widget.title}",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
