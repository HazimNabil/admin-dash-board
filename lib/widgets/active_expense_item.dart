import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/expense_item_model.dart';
import '../utils/styles.dart';
import 'expense_item_header.dart';

class ActiveExpenseItem extends StatelessWidget {
  final ExpenseItemModel itemModel;

  const ActiveExpenseItem({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpenseItemHeader(
            icon: itemModel.icon,
            iconColor: Colors.white,
            backgroundColor: Colors.white.withOpacity(0.10000000149011612),
          ),
          const SizedBox(height: 34),
          Text(
            itemModel.title,
            style: Styles.styleSemiBold16(context).copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            itemModel.date,
            style: Styles.styleRegular14(context).copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            itemModel.price,
            style: Styles.styleSemiBold24(context).copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
