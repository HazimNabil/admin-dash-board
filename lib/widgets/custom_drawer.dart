import 'package:dash_board/models/drawer_tile_model.dart';
import 'package:dash_board/utils/images.dart';
import 'package:dash_board/widgets/drawer_tile_list_view.dart';
import 'package:flutter/material.dart';

import 'user_info_tile.dart';

class CustomDrawer extends StatelessWidget {
  static const List<DrawerTileModel> tiles = [
    DrawerTileModel(
      title: 'Dashboard',
      icon: Images.imagesDashboard,
    ),
    DrawerTileModel(
      title: 'My Transaction',
      icon: Images.imagesMyTransctions,
    ),
    DrawerTileModel(
      title: 'Statistics',
      icon: Images.imagesStatistics,
    ),
    DrawerTileModel(
      title: 'Wallet Account',
      icon: Images.imagesWalletAccount,
    ),
    DrawerTileModel(
      title: 'My Investments',
      icon: Images.imagesMyInvestments,
    ),
  ];

  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          UserInfoTile(
            image: Images.imagesAvatar3,
            name: 'Nate Drake',
            email: 'natedrake2@gmail.com',
          ),
          DrawerTileListView(tiles: tiles),
        ],
      ),
    );
  }
}
