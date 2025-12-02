import 'package:flutter/material.dart';
 import 'package:responsive_dashboard/widget/all_expanses_and_quick_invois_section.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';
import 'package:responsive_dashboard/widget/in_come_section.dart';
import 'package:responsive_dashboard/widget/my_card_and_transaction_section.dart';

import '../utils/styles.dart';

 

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: 
      [
        Expanded(child: CustomDrawer()),      
        SizedBox(width: 32,),
        Expanded(
          flex: 2,
          child: AllExpansesAndQuickInvoisSection(),
        ),
        SizedBox(width: 8,),
       
       // Expanded(child: CustomDotIndicator(isActive: false)),
       Expanded(
        flex: 1,
        child: Column(
          children: [
            MyCardAndTransactionSection(),
            Expanded(child: InComeSection()),
          ],
        )),
       
       
        
      ],
    );
  }
}
