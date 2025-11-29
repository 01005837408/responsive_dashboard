import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class AllExpansesHeader extends StatelessWidget {
  const AllExpansesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text('All Expanses', style:AppStyles.styleSemiBold20 ,),
        Expanded(child: SizedBox()),
        Container(
        //  margin: EdgeInsets.only(top: 12),
          padding: EdgeInsets.all(8),
          decoration: ShapeDecoration(
            color: Colors.white,

            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Color(0xff064061),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
           child: Row(
              children: [
                Text("Monthly",style: AppStyles.styleMedium16 ,),
                SizedBox(width: 16,),
                Transform.rotate(
                  angle: -1.5708,
                  child: Icon(Icons.arrow_back_ios_new_rounded,
                  
                   color: Color(0xff064061),),
                )
              ],
            ),

        )
        
      ],
    );
  }
}