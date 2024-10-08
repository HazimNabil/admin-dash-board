import 'package:dash_board/utils/size_config.dart';
import 'package:dash_board/widgets/detailed_income_chart.dart';
import 'package:flutter/material.dart';

import 'income_chart.dart';
import 'income_details.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return buildResponsiveIncomeBody(width);
  }

  Widget buildResponsiveIncomeBody(double width) {
    var isMiniDesktop = width >= SizeConfig.kDesktopBreakpoint && width < 1750;
    if (isMiniDesktop) {
      return const DetailedIncomeChart();
    } else {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: IncomeChart()),
          Expanded(
            flex: 2,
            child: IncomeDetails(),
          ),
        ],
      );
    }
  }
}
