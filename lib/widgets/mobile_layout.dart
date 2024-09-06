import 'package:flutter/material.dart';

import 'expense_overview_section.dart';
import 'wallet_insight_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ExpenseOverviewSection(),
          WalletInsightSection(),
        ],
      ),
    );
  }
}
