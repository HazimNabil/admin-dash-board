import 'package:flutter/material.dart';

import '../utils/size_config.dart';

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
        if (constraints.maxWidth < SizeConfig.kTabletBreakpoint) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.kDesktopBreakpoint) {
          return tabletLayout(context);
        }
        return desktopLayout(context);
      },
    );
  }
}
