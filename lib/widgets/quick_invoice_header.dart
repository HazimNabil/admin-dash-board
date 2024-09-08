import 'package:dash_board/utils/styles.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: Styles.styleSemiBold20(context),
        ),
        const CircleAvatar(
          radius: 24,
          backgroundColor: Color(0xFFFAFAFA),
          child: Icon(
            Icons.add,
            size: 18,
            color: kPrimaryColor,
          ),
        )
      ],
    );
  }
}
