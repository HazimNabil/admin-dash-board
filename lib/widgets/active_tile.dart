import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../models/drawer_tile_model.dart';
import '../utils/styles.dart';

class ActiveTile extends StatelessWidget {
  const ActiveTile({super.key, required this.drawerTileModel});

  final DrawerTileModel drawerTileModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerTileModel.icon),
      title: Text(
        drawerTileModel.title,
        style: Styles.styleBold16(context),
      ),
      trailing: Container(
        width: 3.25,
        color: kPrimaryColor,
      ),
    );
  }
}
