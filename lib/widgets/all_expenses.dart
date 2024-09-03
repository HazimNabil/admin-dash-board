import 'package:dash_board/widgets/all_expenses_header.dart';
import 'package:dash_board/widgets/all_expenses_items.dart';
import 'package:flutter/material.dart';

import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItems(),
        ],
      ),
    );
  }
}

