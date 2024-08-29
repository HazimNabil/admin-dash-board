import 'package:flutter/material.dart';

import '../constants.dart';

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < kTabletBreakpoint) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < kDesktopBreakpoint) {
          return tabletLayout(context);
        }
        return desktopLayout(context);
      },
    );
  }
}
