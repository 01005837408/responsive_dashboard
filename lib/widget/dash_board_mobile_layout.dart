import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expanses_and_quick_invois_section.dart';
import 'package:responsive_dashboard/widget/income_section.dart';
import 'package:responsive_dashboard/widget/my_card_and_transaction_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20.0),
        child: Column(
          children: [
            AllExpansesAndQuickInvoisSection(),
            SizedBox(height: 24,),
            MyCardAndTransactionSection(),
            SizedBox(height: 24,),
            InComeSection(),
          ],
        ),
      ),
    );
  }
}
