import 'package:flutter/material.dart';

class IncomeChartModel {
  final double value;
  final Color color;
  final double radius;

  const IncomeChartModel({
    required this.value,
    required this.color,
    this.radius = 35,
  });
}
