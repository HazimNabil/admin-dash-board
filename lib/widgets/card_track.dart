import 'package:flutter/material.dart';

import 'custom_background_container.dart';
import 'my_card.dart';
import 'transaction_history.dart';

class CardTrack extends StatelessWidget {
  const CardTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          MyCard(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
