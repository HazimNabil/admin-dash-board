import 'package:dash_board/models/expense_item_model.dart';
import 'package:dash_board/widgets/active_expense_item.dart';
import 'package:flutter/material.dart';

import 'inactive_expense_item.dart';

class ExpenseItem extends StatelessWidget {
  final ExpenseItemModel itemModel;
  final bool isActive;

  const ExpenseItem({
    super.key,
    required this.itemModel,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpenseItem(itemModel: itemModel)
        : InactiveExpenseItem(itemModel: itemModel);
  }
}
