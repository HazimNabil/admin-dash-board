import 'package:flutter/material.dart';

import '../constants.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;

  const DotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? kPrimaryColor : const Color(0xFFE8E8E8),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
