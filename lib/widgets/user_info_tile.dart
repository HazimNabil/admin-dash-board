import 'package:dash_board/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoTile extends StatelessWidget {
  final String image, name, email;

  const UserInfoTile({
    super.key,
    required this.image,
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      tileColor: const Color(0xFFFAFAFA),
      leading: SvgPicture.asset(image),
      title: Text(name, style: Styles.styleSemiBold16),
      subtitle: Text(email, style: Styles.styleRegular12),
    );
  }
}
