import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/income_detailes.dart';
import 'package:responsive_dashboard/widget/income_pieChart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    log(width);
    return width >= 1200 && width < 1600
        ? SizedBox()
        : Row(
            children: [
              Expanded(flex: 1, child: IncomePieChart()),
              Expanded(flex: 2, child: IncomeDetailes()),
            ],
          );
    return Row(
      children: [
        Expanded(flex: 1, child: IncomePieChart()),
        Expanded(flex: 2, child: IncomeDetailes()),
      ],
    );
  }
}
