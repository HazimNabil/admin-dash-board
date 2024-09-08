import 'package:flutter/material.dart';

import '../constants.dart';
import '../utils/styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: Styles.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: Styles.styleMedium16(context).copyWith(
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
