import 'package:dash_board/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'dash_board_info.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 7,
          child: DashBoardInfo(),
        ),
      ],
    );
  }
}
