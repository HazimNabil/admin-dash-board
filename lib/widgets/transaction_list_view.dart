import 'package:dash_board/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

import '../models/transaction_model.dart';

class TransactionListView extends StatelessWidget {
  final transactions = const [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      outcome: Outcome.loss,
    ),
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      outcome: Outcome.gain,
    ),
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      outcome: Outcome.gain,
    ),
  ];

  const TransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        transactions.length,
        buildTransactionItem,
      ),
    );
  }

  Widget buildTransactionItem(int index) {
    return TransactionItem(
      transactionModel: transactions[index],
    );
  }
}
