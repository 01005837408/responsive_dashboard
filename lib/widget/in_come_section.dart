import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';
import 'package:responsive_dashboard/widget/income_detailes.dart';
import 'package:responsive_dashboard/widget/income_pieChart.dart';
import 'package:responsive_dashboard/widget/income_section_widget.dart';

import 'my_card_and_transaction_section.dart';

class InComeSection extends StatelessWidget {
  const InComeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          // SizedBox(
          //   height: 16,
          // ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: IncomePieChart()),
               Expanded(
                  flex: 2,
                child: IncomeDetailes()),
              ],
            ),
          )
        ],
      ),
    );
  }
}

