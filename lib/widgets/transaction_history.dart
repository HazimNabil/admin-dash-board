import 'package:dash_board/widgets/custom_background_container.dart';
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
        ],
      ),
    );
  }
}
