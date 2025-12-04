import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/model/item_detailes_model.dart';
import 'package:responsive_dashboard/widget/item_income_detailes.dart';

class IncomeDetailes extends StatelessWidget {
  const IncomeDetailes({super.key});
  static const items = [
    ItemDetailesModel(
      color: Color(0xff208CC8),
      title: "Design service",
      value: "40%",
    ),
    ItemDetailesModel(
      color: Color(0xff4EB7F2),
      title: "Design Product",
      value: "25%",
    ),
    ItemDetailesModel(
      color: Color(0xff064061),
      title: "Design royalit",
      value: "22%",
    ),
    ItemDetailesModel(
      color: Color(0xffE2DECD),
      title: "Others",
      value: "20%",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => ItemIncomeDetailes(
              itemDetailesModel: e,
            ),
          )
          .toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return ItemIncomeDetailes(
    //       itemDetailesModel: items[index],
    //     );
    //   },
    //   itemCount: items.length,
    // );
  }
}
