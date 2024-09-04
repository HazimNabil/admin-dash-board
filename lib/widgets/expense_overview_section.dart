import 'package:flutter/material.dart';

import 'all_expenses.dart';
import 'quick_invoice.dart';

class ExpenseOverviewSection extends StatelessWidget {
  const ExpenseOverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 40),
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
        SizedBox(height: 32),
      ],
    );
  }
}
