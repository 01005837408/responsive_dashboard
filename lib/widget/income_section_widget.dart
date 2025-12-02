import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
                Text("Income", style:AppStyles.styleSemiBold20),
    
        Container(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide( width : 1, color: Color(0xFFFAFAFA)
        
              ),
            )
            ),
          child: Row(children: [
            Text("Monthly", style: AppStyles.styleMedium16,),
            SizedBox(width: 18,),
            Transform.rotate(
              angle: -1.5708,
              child: Icon(Icons.arrow_back_ios_new, color: Color(0xff064061),))
          ],),
        ),
      ],
    );
  }
}
