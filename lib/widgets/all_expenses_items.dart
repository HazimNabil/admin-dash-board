import 'package:dash_board/models/expense_item_model.dart';
import 'package:dash_board/widgets/expense_item.dart';
import 'package:flutter/material.dart';

import '../utils/images.dart';

class AllExpensesItems extends StatelessWidget {
  final itemModels = const [
    ExpenseItemModel(
      icon: Images.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    ExpenseItemModel(
      icon: Images.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    ExpenseItemModel(
      icon: Images.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  const AllExpensesItems({super.key});

  @override
  Widget build(BuildContext context) {
    var expenseItems = itemModels.asMap().entries.map(toExpenseItem).toList();
    return Row(
      children: expenseItems,
    );
  }

  Expanded toExpenseItem(MapEntry<int, ExpenseItemModel> entry) {
    var index = entry.key;
    var itemModel = entry.value;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
        child: ExpenseItem(itemModel: itemModel),
      ),
    );
  }
}
