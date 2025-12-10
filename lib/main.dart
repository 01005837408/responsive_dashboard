import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/dashboard_view.dart';
import 'package:device_preview/device_preview.dart';
 
void main() {
  runApp(
    DevicePreview(builder: (context) => const MyApp(), enabled: true));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      scrollBehavior: MyCustomScrollBehavior(),
      home: const DashboardView(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
        PointerDeviceKind.stylus,
      };
}