import 'package:dash_board/models/drawer_tile_model.dart';
import 'package:flutter/material.dart';

import 'active_tile.dart';
import 'inactive_tile.dart';

class DrawerTile extends StatelessWidget {
  final DrawerTileModel drawerTileModel;
  final bool isActive;

  const DrawerTile({
    super.key,
    required this.drawerTileModel,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveTile(drawerTileModel: drawerTileModel)
        : InactiveTile(drawerTileModel: drawerTileModel);
  }
}
