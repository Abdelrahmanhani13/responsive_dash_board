import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
                image: Assets.imagesAvatar1,
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.imagesSettings,
                    title: 'Settings',
                  ),
                ),
                SizedBox(height: 20),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.imagesLogout,
                    title: 'Logout',
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
