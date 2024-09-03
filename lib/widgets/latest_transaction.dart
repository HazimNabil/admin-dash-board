import 'package:dash_board/utils/styles.dart';
import 'package:dash_board/widgets/latest_transaction_list.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: Styles.styleMedium16,
        ),
        SizedBox(height: 12),
        LatestTransactionList(),
      ],
    );
  }
}
