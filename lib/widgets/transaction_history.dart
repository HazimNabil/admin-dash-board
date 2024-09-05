import 'package:dash_board/widgets/transaction_list_view.dart';
import 'package:flutter/material.dart';

import 'transaction_history_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 16),
        TransactionListView(),
      ],
    );
  }
}
