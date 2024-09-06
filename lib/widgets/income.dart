import 'package:dash_board/utils/styles.dart';
import 'package:dash_board/widgets/custom_background_container.dart';
import 'package:dash_board/widgets/income_chart.dart';
import 'package:flutter/material.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Income',
            style: Styles.styleSemiBold20,
          ),
          SizedBox(height: 24),
          SizedBox(
            height: 120,
            child: IncomeChart(),
          ),
        ],
      ),
    );
  }
}
