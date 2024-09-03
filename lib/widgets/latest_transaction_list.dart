import 'package:dash_board/models/user_model.dart';
import 'package:dash_board/utils/images.dart';
import 'package:dash_board/widgets/user_info_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionList extends StatelessWidget {
  final userModels = const [
    UserModel(
      image: Images.imagesAvatar1,
      name: 'Madrani Andi',
      email: 'madraniadi20@gmail',
    ),
    UserModel(
      image: Images.imagesAvatar2,
      name: 'Josua Nunito',
      email: 'joshnunito@gmail.com',
    ),
    UserModel(
      image: Images.imagesAvatar1,
      name: 'Madrani Andi',
      email: 'madraniadi20@gmail',
    ),
    UserModel(
      image: Images.imagesAvatar2,
      name: 'Josua Nunito',
      email: 'joshnunito@gmail.com',
    ),
  ];

  const LatestTransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    var userInfoTiles = userModels.map(toUserInfoTile).toList();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfoTiles,
      ),
    );
  }

  IntrinsicWidth toUserInfoTile(userModel) {
    return IntrinsicWidth(
      child: UserInfoTile(user: userModel),
    );
  }
}
