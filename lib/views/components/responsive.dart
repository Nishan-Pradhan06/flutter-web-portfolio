import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget? tablet;
  final Widget mobile;

  const Responsive({
    super.key,
    required this.desktop,
    this.tablet,
    required this.mobile,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 750;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 750 &&
      MediaQuery.of(context).size.width < 1200;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  static bool isDesktopWithoutDrawer(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1600;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return desktop;
        } else if (constraints.maxWidth >= 750) {
          return tablet ?? desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}
