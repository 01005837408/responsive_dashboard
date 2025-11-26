import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class QuickInvioceHeader extends StatelessWidget {
  const QuickInvioceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text("Quick Invoices", style: AppStyles.styleSemiBold20,),
        Spacer(),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffFAFAFA),
          ),
          child: Icon(Icons.add, color: Color(0xff4EB7F2),),
          
        )
        
      ],
    );
  }
}