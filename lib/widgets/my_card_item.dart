import 'package:flutter/material.dart';

import '../utils/images.dart';
import 'my_card_info.dart';

class MyCardItem extends StatelessWidget {
  const MyCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF4EB7F2),
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(Images.imagesCardBackground),
          ),
        ),
        child: const MyCardInfo(),
      ),
    );
  }
}
