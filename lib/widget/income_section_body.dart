import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/datieled_income_charm.dart';
import 'package:responsive_dashboard/widget/income_detailes.dart';
import 'package:responsive_dashboard/widget/income_pieChart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
   // log( MediaQuery.of(context).size.width.toString());
   // print("width $width" );
    return width >= 1000 && width <= 1365
        ?  Expanded( child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: DatieledIncomePieChart(),
        ))
        : Row(
            children: [
              Expanded(flex: 1, child: IncomePieChart()),
              Expanded(flex: 2, child: IncomeDetailes()),
            ],
          );
   
  }
}
