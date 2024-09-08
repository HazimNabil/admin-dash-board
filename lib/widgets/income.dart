import 'package:dash_board/utils/styles.dart';
import 'package:dash_board/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

import 'income_body.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Income',
            style: Styles.styleSemiBold20(context),
          ),
          const SizedBox(height: 24),
          const IncomeBody(),
        ],
      ),
    );
  }
}
