import 'package:dash_board/models/expense_item_model.dart';
import 'package:dash_board/widgets/active_expense_item.dart';
import 'package:flutter/material.dart';

import 'inactive_expense_item.dart';

class ExpenseItem extends StatefulWidget {
  final ExpenseItemModel itemModel;

  const ExpenseItem({super.key, required this.itemModel});

  @override
  State<ExpenseItem> createState() => _ExpenseItemState();
}

class _ExpenseItemState extends State<ExpenseItem> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpenseItem(itemModel: widget.itemModel)
        : InactiveExpenseItem(itemModel: widget.itemModel);
  }
}
