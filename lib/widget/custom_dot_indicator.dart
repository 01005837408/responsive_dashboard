import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widget/dots_indicator.dart';
import 'package:responsive_dashboard/widget/my_card.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return   AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: isActive ? Color(0xff4EB7F2) : Colors.grey,
      ),
    );
  }
}
