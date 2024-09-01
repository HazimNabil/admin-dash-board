import 'package:dash_board/widgets/drawer_tile.dart';
import 'package:flutter/material.dart';

import '../models/drawer_tile_model.dart';

class DrawerTileListView extends StatelessWidget {
  final List<DrawerTileModel> tiles;

  const DrawerTileListView({super.key, required this.tiles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: tiles.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20, left: 28, right: 20),
          child: DrawerTile(drawerTileModel: tiles[index]),
        );
      },
    );
  }
}
