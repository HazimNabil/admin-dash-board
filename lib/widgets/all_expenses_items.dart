import 'package:dash_board/models/expense_item_model.dart';
import 'package:dash_board/widgets/expense_item.dart';
import 'package:flutter/material.dart';

import '../utils/images.dart';

class AllExpensesItems extends StatefulWidget {
  const AllExpensesItems({super.key});

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> {
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

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(0),
            child: ExpenseItem(
              itemModel: itemModels[0],
              isActive: activeIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(1),
            child: ExpenseItem(
              itemModel: itemModels[1],
              isActive: activeIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(2),
            child: ExpenseItem(
              itemModel: itemModels[2],
              isActive: activeIndex == 2,
            ),
          ),
        ),
      ],
    );
  }

  void updateIndex(int index) {
    if (activeIndex != index) {
      setState(() => activeIndex = index);
    }
  }
}
