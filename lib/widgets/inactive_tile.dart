import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/drawer_tile_model.dart';
import '../utils/styles.dart';

class InactiveTile extends StatelessWidget {
  const InactiveTile({super.key, required this.drawerTileModel});

  final DrawerTileModel drawerTileModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerTileModel.icon),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          drawerTileModel.title,
          style: Styles.styleMedium16(context),
        ),
      ),
    );
  }
}
