import 'package:flutter/material.dart';

//class for layout choosing according to the size
class LayoutAdapter extends StatelessWidget {
  const LayoutAdapter({
    required this.desktop,
    required this.tablet,
    required this.mobile,
    this.child,
    super.key,
  });

  final Widget Function(BuildContext context, Widget? child) desktop;
  final Widget Function(BuildContext context, Widget? child) tablet;
  final Widget Function(BuildContext context, Widget? child) mobile;

  final Widget? child;
//definif conditions for the view to the screen
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 451;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 960 &&
      MediaQuery.of(context).size.width > 451;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 960;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
//using conditions for choosing the screen
    if (size.width <= 560) {
      return mobile(context, child);
    } else if (size.width > 560 && size.width < 961) {
      return tablet(context, child);
    } else {
      return desktop(context, child);
    }
  }
}
