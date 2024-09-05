import 'package:dash_board/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

class WalletInsightSection extends StatelessWidget {
  const WalletInsightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        TransactionHistory(),
      ],
    );
  }
}
