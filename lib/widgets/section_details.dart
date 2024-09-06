import 'package:dash_board/models/section_details_model.dart';
import 'package:dash_board/utils/styles.dart';
import 'package:flutter/material.dart';

class SectionDetails extends StatelessWidget {
  final SectionDetailsModel detailsModel;

  const SectionDetails({super.key, required this.detailsModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 6,
        backgroundColor: detailsModel.color,
      ),
      title: Text(
        detailsModel.title,
        style: Styles.styleRegular16,
      ),
      trailing: Text(
        detailsModel.percent,
        style: Styles.styleMedium16.copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}
