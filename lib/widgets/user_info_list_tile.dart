import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});

  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: userInfoModel.image.endsWith('.svg')
          ? SvgPicture.asset(userInfoModel.image)
          : Image.asset(userInfoModel.image),

      title: Text(userInfoModel.title, style: AppStyles.styleSemiBold16),
      subtitle: Text(userInfoModel.subtitle, style: AppStyles.styleRegular12),
    );
  }
}
