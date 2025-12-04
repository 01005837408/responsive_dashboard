import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expanses_and_quick_invois_section.dart';
import 'package:responsive_dashboard/widget/custom_dot_indicator.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';
import 'package:responsive_dashboard/widget/income_section.dart';
import 'package:responsive_dashboard/widget/my_card_and_transaction_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
                hasScrollBody: false,
                child: Row(children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: AllExpansesAndQuickInvoisSection(),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
          
               //   Expanded(child: CustomDotIndicator(isActive: false)),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            MyCardAndTransactionSection(),
                            SizedBox(height: 16,),
                            Expanded(child: InComeSection()),
                          ],
                        ),
                      )),
                ]))
          ]),
        ),
      ],
    );
  }
}
