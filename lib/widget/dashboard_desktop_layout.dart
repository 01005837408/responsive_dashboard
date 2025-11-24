import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';


class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: 
      [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(
          flex: 2,
          child: AllExpanses(),)
       
       
        
      ],
    );
  }
}
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
class AllExpansesHeader extends StatelessWidget {
  const AllExpansesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text('All Expanses', style:AppStyles.styleSemiBold20 ,),
        Expanded(child: SizedBox()),
        Container(
          padding: EdgeInsets.all(12),
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
                  child: Icon(Icons.arrow_back_ios_new_rounded, color: Color(0xff064061),),
                )
              ],
            ),

        )
        
      ],
    );
  }
}