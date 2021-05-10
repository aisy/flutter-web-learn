import 'package:flutter/material.dart';

class ListViewArticlesWidget extends StatefulWidget {
  @override
  _ListViewArticlesWidgetState createState() => _ListViewArticlesWidgetState();
}

class _ListViewArticlesWidgetState extends State<ListViewArticlesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.only(bottom: 20.0),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 10, left: 20),
              child: Text(
                'Headline',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              )),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) => Card(
                margin: EdgeInsets.only(left: 20),
                child: Center(
                  child: Container(
                    width: 250,
                    margin: EdgeInsets.only(bottom: 20, right: 20),
                    child: Center(
                      child: Text('Dummy Card Text'),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
