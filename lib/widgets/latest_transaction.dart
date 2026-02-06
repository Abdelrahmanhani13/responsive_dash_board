import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransaction extends StatelessWidget {
  LatestTransaction({super.key});

  final List<UserInfoModel> items = [
    UserInfoModel(
      title: 'Madrani Andi',
      image: Assets.imagesAvatar1,
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      title: 'Madrani Andi',
      image: Assets.imagesAvatar2,
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      title: 'Madrani Andi',
      image: Assets.imagesAvatar1,
      subtitle: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {},
            child: Text('Latest Transaction', style: AppStyles.styleRegular16),
          ),
        ),
        SizedBox(
          height: 80,
          child: Material(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return IntrinsicWidth(
                  child: UserInfoListTile(userInfoModel: items[index]),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
