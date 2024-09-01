import 'package:dash_board/models/drawer_tile_model.dart';
import 'package:dash_board/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerTile extends StatelessWidget {
  final DrawerTileModel drawerTileModel;

  const DrawerTile({
    super.key,
    required this.drawerTileModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerTileModel.icon),
      title: Text(
        drawerTileModel.title,
        style: Styles.styleBold16,
      ),
    );
  }
}
