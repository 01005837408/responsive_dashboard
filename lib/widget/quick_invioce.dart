import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';
import 'package:responsive_dashboard/widget/latest_transaction.dart';
import 'package:responsive_dashboard/widget/quick_invioce_header.dart';
import 'package:responsive_dashboard/widget/quick_invois_form.dart';

class QuickInvioce extends StatelessWidget {
  const QuickInvioce({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        QuickInvioceHeader(),
        Gap(12),
        LatestTransaction(),
        QuickInvoisForm(),
      ],
    ));
  }
}
