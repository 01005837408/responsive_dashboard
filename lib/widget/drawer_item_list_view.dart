import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/drawer_item_model.dart';
import 'package:responsive_dashboard/widget/drawer_item.dart';

import '../utils/app_assets.dart';

class DraerItemListView extends StatelessWidget {
  const DraerItemListView({
    super.key,
   
  });

   final List<DrawerItemModel> drawerItem = const [
    DrawerItemModel(title: "Dashboard", image: Assets.assetsImagesDashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.assetsImagesTransaction),
    DrawerItemModel(title: "Statistics", image: Assets.assetsImagesStatistic),
    DrawerItemModel(title: "Wallet Account", image: Assets.assetsImagesWallet),
    DrawerItemModel(title: "My Investments", image: Assets.assetsImagesMyInvestment),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     shrinkWrap: true,
     itemCount: drawerItem.length,
     physics: NeverScrollableScrollPhysics(),
     itemBuilder: (context, index) {
     
     return Padding(
       padding: const EdgeInsets.only(top: 20.0),
       child: DrawerItem(drawerItemModel: drawerItem[index],),
     );
    },
    );
  }
}