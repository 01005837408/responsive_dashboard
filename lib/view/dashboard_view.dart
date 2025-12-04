import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';
import 'package:responsive_dashboard/widget/dash_board_mobile_layout.dart';
import 'package:responsive_dashboard/widget/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widget/tablet_dashboard_layout.dart';


class DashboardView extends StatefulWidget {
   const DashboardView({super.key,  });

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < 700
          ? AppBar(
              backgroundColor: Color(0xffFAFAFA),
              leading:  IconButton(
                onPressed: (){
                  scaffoldKey.currentState!.openDrawer();
                  setState(() {
                    
                  });
                },
               icon:   Icon(Icons.menu), color: Colors.black,),
            )
          : null,
          drawer: MediaQuery.of(context).size.width < 700 ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const TabletDashboardLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
