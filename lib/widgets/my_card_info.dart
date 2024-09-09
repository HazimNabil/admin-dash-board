import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/images.dart';
import '../utils/styles.dart';

class MyCardInfo extends StatelessWidget {
  const MyCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(
            top: 16,
            left: 31,
            right: 42,
          ),
          title: Text(
            'Name card',
            style: Styles.styleRegular16(context).copyWith(
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            'Syah Bandi',
            style: Styles.styleMedium20(context),
          ),
          trailing: SvgPicture.asset(Images.imagesGallery),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 24, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '0918 8124 0042 8129',
                style: Styles.styleSemiBold24(context).copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                '12/20 - 124',
                style: Styles.styleRegular16(context).copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
