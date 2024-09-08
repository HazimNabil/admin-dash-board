import 'package:dash_board/models/user_model.dart';
import 'package:dash_board/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoTile extends StatelessWidget {
  final UserModel user;

  const UserInfoTile({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tileColor: const Color(0xFFFAFAFA),
      leading: SvgPicture.asset(user.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          user.name,
          style: Styles.styleSemiBold16(context),
        ),
      ),
      subtitle: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          user.email,
          style: Styles.styleRegular12(context),
        ),
      ),
    );
  }
}
