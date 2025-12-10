import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/utils/model/user_info_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widget/drawer_item_list_view.dart';
import 'package:responsive_dashboard/widget/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
    const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        UserInfoListTile(
          userInfoModel: UserInfoModel(
          title: "Lekan Okeowo",
          subtitle: "demo@gmail.com",
          image: Assets.assetsImagesFrame,
          ),
        ),
       SizedBox(height: 8,),
       DraerItemListView(),
       Text("Logout", style: AppStyles.styleMedium16(context),)
      ]),
    );
  }
}


