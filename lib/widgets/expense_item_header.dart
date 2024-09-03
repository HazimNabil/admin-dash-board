import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpenseItemHeader extends StatelessWidget {
  final String icon;
  final Color? backgroundColor, iconColor;

  const ExpenseItemHeader({
    super.key,
    required this.icon,
    this.backgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: backgroundColor ?? const Color(0xFFFAFAFA),
          child: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
              iconColor ?? const Color(0xFF4EB7F2),
              BlendMode.srcIn,
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: iconColor == null ? Colors.black : Colors.white,
        ),
      ],
    );
  }
}
