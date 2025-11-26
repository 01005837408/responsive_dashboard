import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.padding,
  });

  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(padding ?? 20),
        decoration: ShapeDecoration(
          color: Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: Color(0xff064061),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: child);
  }
}
