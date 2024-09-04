import 'package:dash_board/widgets/my_card.dart';
import 'package:flutter/material.dart';

class WalletInsightSection extends StatelessWidget {
  const WalletInsightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        MyCard(),
      ],
    );
  }
}
