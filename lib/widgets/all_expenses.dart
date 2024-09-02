import 'package:dash_board/models/expense_item_model.dart';
import 'package:dash_board/utils/images.dart';
import 'package:dash_board/widgets/all_expenses_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'expense_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const AllExpensesHeader(),
          ExpenseItem(
            itemModel: ExpenseItemModel(
              icon: Images.imagesBalance,
              title: 'Balance',
              date: '22 April 2024',
              price: r'$12,000',
            ),
          ),
        ],
      ),
    );
  }
}
