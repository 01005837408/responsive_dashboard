import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widget/custom_text_button.dart';
import 'package:responsive_dashboard/widget/title_text_field.dart';

class QuickInvoisForm extends StatelessWidget {
  const QuickInvoisForm({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: "Customer name", hintText: "Type customer name")),
            Gap(12),
            Expanded(
                child: TitleTextField(
              title: "Customer Email",
              hintText: "Type customer email",
            )),
          ],
        ),
        Gap(12),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: "Item name", hintText: "Type customer name")),
            Gap(12),
            Expanded(
                child: TitleTextField(
              title: "Item Mount",
              hintText: "USD",
            )),
          ],
        ),
        Gap(6),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: (){}, child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text("Add more details", style: AppStyles.styleSemiBold18(context).copyWith(color :Color(0xff4EB7F2)),))),
            Expanded(child: SizedBox(),),
            Flexible(child: CustomTextButton(onPressed: (){})),
          ],
        ),
      ],
    );
  }
}
