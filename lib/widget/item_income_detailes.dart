import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/model/item_detailes_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class ItemIncomeDetailes extends StatelessWidget {
  const ItemIncomeDetailes({super.key , required this.itemDetailesModel});
 final  ItemDetailesModel itemDetailesModel;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          color: itemDetailesModel.color,
          borderRadius: BorderRadius.circular(12)
        ),
      ),
      title:Text(itemDetailesModel.title, style: AppStyles.styleRegular16,) ,
      trailing: Text(itemDetailesModel.value, style: AppStyles.styleMedium20.copyWith(color:Color(0xff208CC8)),),
    );
  }
}