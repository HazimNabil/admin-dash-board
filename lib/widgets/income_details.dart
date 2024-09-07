import 'package:dash_board/models/section_details_model.dart';
import 'package:flutter/material.dart';

import 'section_details.dart';

class IncomeDetails extends StatelessWidget {
  final sectionDetailsModels = const [
    SectionDetailsModel(
      color: Color(0xFF208CC8),
      title: 'Design service',
      percent: '40%',
    ),
    SectionDetailsModel(
      color: Color(0xFF4EB7F2),
      title: 'Design product',
      percent: '25%',
    ),
    SectionDetailsModel(
      color: Color(0xFF064061),
      title: 'Product royalty',
      percent: '20%',
    ),
    SectionDetailsModel(
      color: Color(0xFFE2DECD),
      title: 'Other',
      percent: '22%',
    ),
  ];

  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        sectionDetailsModels.length,
        buildSectionDetails,
      ),
    );
  }

  Widget buildSectionDetails(int index) {
    return SectionDetails(
      detailsModel: sectionDetailsModels[index],
    );
  }
}
