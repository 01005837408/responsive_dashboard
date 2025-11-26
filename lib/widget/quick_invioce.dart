import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';
import 'package:responsive_dashboard/widget/latest_transaction.dart';
import 'package:responsive_dashboard/widget/quick_invioce_header.dart';
import 'package:responsive_dashboard/widget/title_text_field.dart';

class QuickInvioce extends StatelessWidget {
  const QuickInvioce({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(child: Column(
      children: [
        QuickInvioceHeader(),
        Gap(12),
        LatestTransaction(),
        QuickInvoisForm(),
      ],
    ));
  }
}
class QuickInvoisForm extends StatelessWidget {
  const QuickInvoisForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(title: "Customer name", hintText: "Type customer name")),
            Gap(12),
            Expanded(child: TitleTextField(title: "Customer Email", hintText: "Type customer email",)),
            
            
          ],
        ),
        Gap(12),
        Row(
          children: [
            Expanded(child: TitleTextField(title: "Customer name", hintText: "Type customer name")),
            Gap(12),
            Expanded(child: TitleTextField(title: "Customer Email", hintText: "Type customer email",)),
            
            
          ],
        ),
        
      ],
    );
  }
}
