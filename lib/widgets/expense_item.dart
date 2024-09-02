import 'package:dash_board/models/expense_item_model.dart';
import 'package:dash_board/utils/styles.dart';
import 'package:dash_board/widgets/expense_item_header.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  final ExpenseItemModel itemModel;

  const ExpenseItem({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpenseItemHeader(icon: itemModel.icon),
          const SizedBox(height: 34),
          Text(
            itemModel.title,
            style: Styles.styleSemiBold16,
          ),
          const SizedBox(height: 8),
          Text(
            itemModel.date,
            style: Styles.styleRegular14,
          ),
          const SizedBox(height: 16),
          Text(
            itemModel.price,
            style: Styles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
