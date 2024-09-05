import 'package:dash_board/models/transaction_model.dart';
import 'package:dash_board/utils/styles.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transactionModel;

  const TransactionItem({super.key, required this.transactionModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: Text(
            transactionModel.title,
            style: Styles.styleSemiBold16,
          ),
          subtitle: Text(
            transactionModel.date,
            style: Styles.styleRegular16.copyWith(
              color: const Color(0xFFAAAAAA),
            ),
          ),
          trailing: Text(
            transactionModel.amount,
            style: Styles.styleSemiBold20.copyWith(
              color: getColor(),
            ),
          ),
        ),
      ),
    );
  }

  Color getColor() {
    return transactionModel.outcome == Outcome.gain
        ? const Color(0xFF7DD97B)
        : const Color(0xFFF3735E);
  }
}
