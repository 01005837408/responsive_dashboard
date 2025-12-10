import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/model/item_detailes_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class ItemIncomeDetailes extends StatelessWidget {
  const ItemIncomeDetailes({super.key, required this.itemDetailesModel});
  final ItemDetailesModel itemDetailesModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        dense: true,
        minLeadingWidth: 0,
        // horizontalTitleGap:0 ,
        leading: Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
              color: itemDetailesModel.color,
              borderRadius: BorderRadius.circular(8)),
        ),
        title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              itemDetailesModel.title,
              style: AppStyles.styleRegular16(context).copyWith(fontSize: 16),
            )),
        trailing: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            itemDetailesModel.value,
            style: AppStyles.styleMedium20(context)
                .copyWith(color: Color(0xff208CC8), fontSize: 16),
          ),
        ),
      ),
    );
  }
}
