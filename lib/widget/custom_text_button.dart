import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const   CustomTextButton({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ElevatedButton.styleFrom(
     //   alignment: Alignment.center,
        backgroundColor: const Color(0xff4EB7F2),
        maximumSize: const Size(250, 55),
        minimumSize: const Size(180, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      
        onPressed: onPressed,
        child: FittedBox(
          fit: BoxFit.scaleDown,

          child: Text(
            "Send Money",
            style: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          ),
        ),
      );
  }
}
