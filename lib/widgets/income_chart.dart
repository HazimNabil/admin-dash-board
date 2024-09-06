import 'package:dash_board/models/income_chart_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
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

  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(getPieChartDate());
  }

  PieChartData getPieChartDate() {
    var sections = sectionsData.map(toPieChartSection).toList();
    return PieChartData(
      sectionsSpace: 0,
      sections: sections,
    );
  }

  PieChartSectionData toPieChartSection(IncomeChartModel sectionData) {
    return PieChartSectionData(
      showTitle: false,
      value: sectionData.value,
      color: sectionData.color,
      radius: sectionData.radius,
    );
  }
}
