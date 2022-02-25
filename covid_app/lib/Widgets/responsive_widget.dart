import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    Key? key,
    required this.phone,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  final Widget phone;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return desktop;
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return tablet;
      } else {
        return phone;
      }
    });
  }
}
