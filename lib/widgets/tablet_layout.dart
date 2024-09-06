import 'package:dash_board/widgets/custom_drawer.dart';
import 'package:dash_board/widgets/expense_overview_section.dart';
import 'package:dash_board/widgets/wallet_insight_section.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 24),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ExpenseOverviewSection(),
                WalletInsightSection(),
              ],
            ),
          ),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}
