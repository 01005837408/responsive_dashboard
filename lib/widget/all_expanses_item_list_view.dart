import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/utils/model/all_expanses_item_model.dart';
import 'package:responsive_dashboard/widget/all_expanses_item.dart';

class AllExpansesItemListView extends StatelessWidget {
  const AllExpansesItemListView({super.key});
  static const allExpansesItemModelList = [
      AllExpansesItemModel(
        image: Assets.assetsImagesBalance,
        title: "Balance",
        data: "April 2022",
        price: r'$20,129'),
    AllExpansesItemModel(
      image: Assets.assetsImagesIncome,
      title: 'Income',
      data: 'April 2022',
      price: r'$20,129',
    ),
    AllExpansesItemModel(
        image: Assets.assetsImagesExpenses,
        title: "Expenses",
        data: "April 2022",
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: allExpansesItemModelList.asMap().entries.map((e) {
        int index = e.key;
        return Expanded(
          child: Padding(
            padding: index == 1
                ? const EdgeInsets.symmetric(horizontal: 12)
                : EdgeInsets.zero,
            child: AllExpansesItem(allExpansesItemModel: e.value),
          ),
        );
      }).toList(),
// children: allExpansesItemModelList
//             .map((e) => Expanded(child: AllExpansesItem(allExpansesItemModel: e)))
//             .toList()
        ); 
    // return ListView.builder(
    //   shrinkWrap: true,
    //   scrollDirection: Axis.horizontal,
    //   itemCount: allExpansesItemModelList.length,
    //   itemBuilder: (context, index) {
    //     return AllExpansesItem(
    //       allExpansesItemModel: allExpansesItemModelList[index],
    //     );
    //   },
    // );
  }
}
