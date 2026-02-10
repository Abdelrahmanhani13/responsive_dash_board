import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static final List<UserInfoModel> items = [
    UserInfoModel(
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      title: 'john fekry',
      subtitle: 'johnfekry@gmail.com',
      image: Assets.imagesAvatar1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(userInfoModel: items[index]),
          );
        },
      ),
    );
  }
}
