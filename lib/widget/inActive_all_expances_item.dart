import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/model/all_expanses_item_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widget/all_expanses_item_header.dart';

class InActiveAllExpancesItem extends StatelessWidget {
  const InActiveAllExpancesItem({
    super.key,
    required this.allExpansesItemModel,
  });

  final AllExpansesItemModel allExpansesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
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
class ActiveAllExpancesItem extends StatelessWidget {
  const ActiveAllExpancesItem({
    super.key,
    required this.allExpansesItemModel,
  });

  final AllExpansesItemModel allExpansesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xff4EB7F2),
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
            imageColor: Colors.white,
            imageBackgroundColor: Colors.white.withOpacity(0.1),
            image: allExpansesItemModel.image,
          ),
    Gap(34),
          Text(allExpansesItemModel.title, style:AppStyles.styleSemiBold20.copyWith(color: Colors.white) ,),
          Gap(16),
          Text(allExpansesItemModel.data, style:AppStyles.styleMedium16.copyWith(color: Color(0xffFAFAFA)) ,),
          Gap(16),
          Text(allExpansesItemModel.price, style:AppStyles.styleMedium16.copyWith(color: Colors.white, fontSize: 24) ,),
          
        ],
      ),
    );
  }
}