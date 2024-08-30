import 'package:dash_board/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerTile extends StatelessWidget {
  final String icon, title;

  const DrawerTile({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(icon),
      title: Text(
        title,
        style: Styles.styleBold16,
      ),
    );
  }
}
