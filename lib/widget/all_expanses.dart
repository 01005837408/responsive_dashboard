import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expanses_header.dart';

class AllExpanses extends StatelessWidget {
  const AllExpanses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Color(0xffF9FBFF),

        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xff064061),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          const AllExpansesHeader(),
          
        ],
      ));
  }
}
