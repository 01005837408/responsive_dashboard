import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return   TextField(
      
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.styleRegular14.copyWith(color:Color(0xffAAAAAA)),
        fillColor: Color(0xFFFAFAFA),
        filled: true,
        border: BuildBorder(),
           enabledBorder:BuildBorder(),
           focusedBorder:BuildBorder(), 
           ),
      
    );
  }

  OutlineInputBorder BuildBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFFAFAFA),
        ),
        borderRadius: BorderRadius.circular(12),
         );
  }
}

