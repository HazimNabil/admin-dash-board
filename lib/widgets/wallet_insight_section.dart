import 'package:flutter/material.dart';

import 'card_track.dart';

class WalletInsightSection extends StatelessWidget {
  const WalletInsightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 40),
        CardTrack(),
      ],
    );
  }
}
