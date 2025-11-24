import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/dashboard_desktop_layout.dart';


class DashboardView extends StatelessWidget {
   const DashboardView({super.key,  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashboardDesktopLayout()
      // AdaptiveLayout(
      //   mobileLayout: (context) => const Center(
      //     child: Text('Mobile Layout'),
      //   ),
      //   tabletLayout: (context) => const Center(
      //     child: Text('Tablet Layout'),
      //   ),
      //   desktopLayout: (context) => const DashboardDesktopLayout(),
      // ),
    );
  }
}
