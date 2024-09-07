import 'package:flutter/material.dart';

import 'expense_overview_section.dart';
import 'wallet_insight_section.dart';

class DashBoardInfo extends StatelessWidget {
  const DashBoardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: ExpenseOverviewSection(),
                ),
              ),
              SizedBox(width: 32),
              Expanded(
                flex: 3,
                child: WalletInsightSection(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
