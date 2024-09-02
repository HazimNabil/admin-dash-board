import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpenseItemHeader extends StatelessWidget {
  final String icon;

  const ExpenseItemHeader({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xFFFAFAFA),
          child: SvgPicture.asset(icon),
        ),
        const Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
