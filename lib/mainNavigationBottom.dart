import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/account.dart';
import 'package:flutter_application_1/screens/channels.dart';
import 'package:flutter_application_1/screens/home.dart';

class MainHomeBottomNavigation extends StatefulWidget {
  @override
  _MainHomeBottomNavigationState createState() =>
      _MainHomeBottomNavigationState();
}

class _MainHomeBottomNavigationState extends State<MainHomeBottomNavigation> {
  int _selectedIndex = 0;

  // Navigator Key
  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteinCurrentTab =
            !await _navigatorKeys[_selectedIndex].currentState.maybePop();
        return isFirstRouteinCurrentTab;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.article), label: "channels"),
            BottomNavigationBarItem(
                icon: Icon(Icons.rate_review), label: "review"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        body: Stack(
          children: [
            _buildOffStageNavigator(0),
            _buildOffStageNavigator(1),
            _buildOffStageNavigator(2),
            _buildOffStageNavigator(3),
          ],
        ),
      ),
    );
  }

//   void _next() {
//   Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
// }

// Mapping Route
  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          HomeScreen(),
          ChannelsScreen(),
          AccountScreen(),
          AccountScreen(),
        ].elementAt(index);
      },
    };
  }

// Build Navigation
  Widget _buildOffStageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name](context),
          );
        },
      ),
    );
  }
}
