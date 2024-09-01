import 'package:dash_board/utils/images.dart';
import 'package:dash_board/widgets/drawer_tile_list_view.dart';
import 'package:flutter/material.dart';

import 'bottom_aligned_tiles.dart';
import 'user_info_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoTile(
              image: Images.imagesAvatar3,
              name: 'Nate Drake',
              email: 'natedrake2@gmail.com',
            ),
          ),
          DrawerTileListView(),
          BottomAlignedTiles(),
        ],
      ),
    );
  }
}
