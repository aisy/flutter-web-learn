import 'package:flutter/material.dart';
import 'package:flutter_application_1/router_constants.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: Container(
          padding: EdgeInsets.all(24),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Ini Halaman Account"),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, HomeView);
                      },
                      child: Text("ke Halaman Home"))
                ]),
          )),
    );
  }
}
