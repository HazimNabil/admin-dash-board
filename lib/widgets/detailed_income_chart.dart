import 'package:dash_board/utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../models/income_chart_model.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  final sectionsData = const [
    IncomeChartModel(
      value: 40,
      color: Color(0xFF208CC8),
    ),
    IncomeChartModel(
      value: 25,
      color: Color(0xFF4EB7F2),
    ),
    IncomeChartModel(
      value: 20,
      color: Color(0xFF064061),
    ),
    IncomeChartModel(
      value: 15,
      color: Color(0xFFE2DECD),
    ),
  ];

  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getPieChartDate()),
    );
  }

  PieChartData getPieChartDate() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: updateTouchedIndex,
      ),
      sectionsSpace: 0,
      sections: List.generate(
        sectionsData.length,
        buildPieChartSection,
      ),
    );
  }

  PieChartSectionData buildPieChartSection(int index) {
    var radius = sectionsData[index].radius;
    return PieChartSectionData(
      value: sectionsData[index].value,
      color: sectionsData[index].color,
      radius: touchedIndex == index ? radius + 10 : radius,
      titleStyle: Styles.styleRegular14(context).copyWith(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  void updateTouchedIndex(
    FlTouchEvent touchEvent,
    PieTouchResponse? touchResponse,
  ) {
    touchedIndex = touchResponse?.touchedSection?.touchedSectionIndex ?? -1;
    setState(() {});
  }
}
