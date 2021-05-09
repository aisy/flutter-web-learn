import 'package:flutter/material.dart';

class DrawerWebWidget extends StatefulWidget {
  DrawerWebWidget({Key key}) : super(key: key);

  @override
  _DrawerWebWidgetState createState() => _DrawerWebWidgetState();
}

class _DrawerWebWidgetState extends State<DrawerWebWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerHeader(
          child: Stack(
            children: <Widget>[
              Align(alignment: Alignment.center, child: Text("Jagatplay"))
            ],
          ),
          decoration: BoxDecoration(color: Colors.amber),
        ),
        // list menu
        DrawerListTile(),
      ],
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => {},
      horizontalTitleGap: 0.0,
      leading: const Icon(Icons.home),
      title: Text("Home"),
    );
  }
}
