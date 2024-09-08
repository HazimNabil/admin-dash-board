import 'package:dash_board/utils/styles.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'All Expenses',
      style: Styles.styleSemiBold20(context),
    );
  }
}
