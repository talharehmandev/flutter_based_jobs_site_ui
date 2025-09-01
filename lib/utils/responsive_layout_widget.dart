import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget Function(BuildContext) mobileBuilder;
  final Widget Function(BuildContext) desktopBuilder;

  const ResponsiveLayout({
    Key? key,
    required this.mobileBuilder,
    required this.desktopBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Mobile layout
          return mobileBuilder(context);
        } else {
          // Desktop layout
          return desktopBuilder(context);
        }
      },
    );
  }
}
