import 'package:dash_board/models/transaction_model.dart';
import 'package:dash_board/widgets/custom_background_container.dart';
import 'package:dash_board/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

import 'transaction_history_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          TransactionHistoryHeader(),
          SizedBox(height: 16),
          TransactionItem(
            transactionModel: TransactionModel(
              title: 'Cash Withdrawal',
              date: '13 Apr, 2022 ',
              amount: r'$20,129',
              outcome: Outcome.gain,
            ),
          ),
        ],
      ),
    );
  }
}
