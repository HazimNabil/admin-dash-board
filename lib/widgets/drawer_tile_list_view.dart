import 'package:dash_board/widgets/drawer_tile.dart';
import 'package:flutter/material.dart';

import '../models/drawer_tile_model.dart';
import '../utils/images.dart';

class DrawerTileListView extends StatefulWidget {
  const DrawerTileListView({super.key});

  @override
  State<DrawerTileListView> createState() => _DrawerTileListViewState();
}

class _DrawerTileListViewState extends State<DrawerTileListView> {
  int activeIndex = 0;

  final List<DrawerTileModel> tiles = const [
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

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: tiles.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => activateDrawerTile(index),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 28, right: 20),
            child: DrawerTile(
              drawerTileModel: tiles[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }

  void activateDrawerTile(int index) {
    if (activeIndex != index) {
      setState(() => activeIndex = index);
    }
  }
}
