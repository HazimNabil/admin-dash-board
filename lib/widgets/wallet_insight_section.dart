import 'package:flutter/material.dart';

import 'card_track.dart';
import 'income.dart';

class WalletInsightSection extends StatelessWidget {
  const WalletInsightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),
          CardTrack(),
          SizedBox(height: 24),
          Income(),
        ],
      ),
    );
  }
}
