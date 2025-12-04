import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';
import 'package:responsive_dashboard/widget/income_section_body.dart';
import 'package:responsive_dashboard/widget/income_section_Header.dart';

class InComeSection extends StatelessWidget {
  const InComeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          // SizedBox(
          //   height: 16,
          // ),
          IncomeSectionBody()
        ],
      ),
    );
  }
}
