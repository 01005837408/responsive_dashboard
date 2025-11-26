import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';
import 'package:responsive_dashboard/widget/quick_invioce_header.dart';

class QuickInvioce extends StatelessWidget {
  const QuickInvioce({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(child: Column(
      children: [
        QuickInvioceHeader(),
      ],
    ));
  }
}
