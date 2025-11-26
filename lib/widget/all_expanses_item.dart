import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/model/all_expanses_item_model.dart';
import 'inActive_all_expances_item.dart';

class AllExpansesItem extends StatelessWidget {
   const AllExpansesItem({super.key, required this.allExpansesItemModel, required this.isSelected});

final AllExpansesItemModel allExpansesItemModel;
final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return   isSelected ? ActiveAllExpancesItem(allExpansesItemModel: allExpansesItemModel) : InActiveAllExpancesItem(allExpansesItemModel: allExpansesItemModel);
  }
}

