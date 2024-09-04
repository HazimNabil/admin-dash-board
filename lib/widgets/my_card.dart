import 'package:dash_board/utils/styles.dart';
import 'package:dash_board/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'my_card_item.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Card',
            style: Styles.styleSemiBold20,
          ),
          SizedBox(height: 20),
          MyCardItem(),
        ],
      ),
    );
  }
}
