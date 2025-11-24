import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/model/all_expanses_item_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widget/all_expanses_item_header.dart';

class AllExpansesItem extends StatelessWidget {
   const AllExpansesItem({super.key, required this.allExpansesItemModel});

final AllExpansesItemModel allExpansesItemModel;
  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpansesItemHeader(
            image: allExpansesItemModel.image,
          ),
Gap(34),
          Text(allExpansesItemModel.title, style:AppStyles.styleSemiBold20 ,),
          Gap(16),
          Text(allExpansesItemModel.data, style:AppStyles.styleMedium16 ,),
          Gap(16),
          Text(allExpansesItemModel.price, style:AppStyles.styleMedium16 ,),
          
        ],
      ),
    );
  }
}