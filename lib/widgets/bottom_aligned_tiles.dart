import 'package:flutter/material.dart';

import '../models/drawer_tile_model.dart';
import '../utils/images.dart';
import 'inactive_tile.dart';

class BottomAlignedTiles extends StatelessWidget {
  const BottomAlignedTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          Expanded(child: SizedBox(height: 20)),
          InactiveTile(
            drawerTileModel: DrawerTileModel(
              title: 'Settings',
              icon: Images.imagesSettings,
            ),
          ),
          SizedBox(height: 20),
          InactiveTile(
            drawerTileModel: DrawerTileModel(
              title: 'Logout',
              icon: Images.imagesLogout,
            ),
          ),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
