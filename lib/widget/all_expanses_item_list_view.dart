// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/utils/model/all_expanses_item_model.dart';
import 'package:responsive_dashboard/widget/all_expanses_item.dart';

class AllExpansesItemListView extends StatefulWidget {
      AllExpansesItemListView({super.key});
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
  int selectedIndex = 0;

  @override
  State<AllExpansesItemListView> createState() => _AllExpansesItemListViewState();
}

class _AllExpansesItemListViewState extends State<AllExpansesItemListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpansesItemListView.allExpansesItemModelList.asMap().entries.map((e) {
        int index = e.key;
        return Expanded(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal:index == 1 ? 6 :0),
                
            child: InkWell(
              onTap: () {
                setState(() {
                  widget.selectedIndex = index;
                });
              },
              child: AllExpansesItem(
                isSelected: widget.selectedIndex == index,
                allExpansesItemModel: e.value),
            ),
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
