import 'package:dash_board/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpenseItemHeader extends StatelessWidget {
  const ExpenseItemHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xFFFAFAFA),
          child: SvgPicture.asset(Images.imagesBalance),
        ),
        const Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
