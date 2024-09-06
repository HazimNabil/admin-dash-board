import 'package:dash_board/constants.dart';
import 'package:dash_board/widgets/adaptive_layout.dart';
import 'package:dash_board/widgets/custom_drawer.dart';
import 'package:dash_board/widgets/mobile_layout.dart';
import 'package:flutter/material.dart';

import '../widgets/desktop_layout.dart';
import '../widgets/tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      drawer: buildDrawer(context),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }

  CustomDrawer? buildDrawer(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < kTabletBreakpoint) {
      return const CustomDrawer();
    } else {
      return null;
    }
  }

  AppBar? buildAppBar(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < kTabletBreakpoint) {
      return AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
      );
    } else {
      return null;
    }
  }
}
