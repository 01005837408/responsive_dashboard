import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';
import 'package:responsive_dashboard/widget/dash_board_mobile_layout.dart';

class TabletDashboardLayout extends StatelessWidget {
  const TabletDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child:CustomDrawer(),
        ),
        SizedBox(width: 24,),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top:20),
            child: DashBoardMobileLayout(),
          ),
        ),
        SizedBox(width: 24,),
       
      ],
    );
  }
}
