import 'package:dash_board/models/income_chart_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
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
    return PieChart(getPieChartDate());
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

  PieChartSectionData buildPieChartSection(index) {
    return PieChartSectionData(
      showTitle: false,
      value: sectionsData[index].value,
      color: sectionsData[index].color,
      radius: touchedIndex == index ? 30 : sectionsData[index].radius,
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
