import 'package:flutter/material.dart';
 import 'package:responsive_dashboard/widget/all_expanses_and_quick_invois_section.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';
 

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
        )
       
       
        
      ],
    );
  }
}
