import 'package:dash_board/models/user_model.dart';
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
      child: Padding(
        padding: EdgeInsets.only(left: 28.0, right: 20.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            SliverToBoxAdapter(
              child: UserInfoTile(
                user: UserModel(
                  image: Images.imagesAvatar3,
                  name: 'Nate Drake',
                  email: 'natedrake2@gmail.com',
                ),
              ),
            ),
            DrawerTileListView(),
            BottomAlignedTiles(),
          ],
        ),
      ),
    );
  }
}
