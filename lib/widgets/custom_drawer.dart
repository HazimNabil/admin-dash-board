import 'package:dash_board/utils/images.dart';
import 'package:flutter/material.dart';

import 'user_info_tile.dart';

class CustomDrawer extends StatelessWidget {
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
        ],
      ),
    );
  }
}
