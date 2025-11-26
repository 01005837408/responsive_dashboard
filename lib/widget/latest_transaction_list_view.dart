import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/utils/model/user_info_model.dart';
import 'package:responsive_dashboard/widget/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      image: Assets.assetsImagesFrame,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Assets.assetsImagesAvatar2,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Assets.assetsImagesFrame,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
    
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row (
        children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e,))).toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
     
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //     return IntrinsicWidth(child: UserInfoListTile(userInfoModel: items[index],));
    //   }),
    // );
  }
}
