import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.taplaytLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, taplaytLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 900) {
          return taplaytLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
