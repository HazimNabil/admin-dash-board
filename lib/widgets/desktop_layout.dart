import 'package:dash_board/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'expense_overview_section.dart';
import 'wallet_insight_section.dart';

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
          flex: 4,
          child: ExpenseOverviewSection(),
        ),
        Expanded(
          flex: 3,
          child: WalletInsightSection(),
        ),
      ],
    );
  }
}
