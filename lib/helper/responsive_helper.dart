import 'package:flutter/material.dart';

class ResponsiveHelper extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveHelper({Key key, this.mobile, this.tablet, this.desktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 768) {
        return mobile;
      } else if (constraints.maxWidth < 1080) {
        return tablet;
      } else {
        return desktop;
      }
    });
  }
}
