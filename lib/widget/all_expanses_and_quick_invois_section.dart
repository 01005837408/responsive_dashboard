import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widget/all_expanses.dart';
import 'package:responsive_dashboard/widget/quick_invioce.dart';

class AllExpansesAndQuickInvoisSection extends StatelessWidget {
  const AllExpansesAndQuickInvoisSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(20),
        AllExpanses(),
        Gap(12),
        QuickInvioce(),
        
      ],
    );
  }
}
