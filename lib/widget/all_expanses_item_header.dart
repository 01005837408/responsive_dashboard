import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
 
class AllExpansesItemHeader extends StatelessWidget {
    const AllExpansesItemHeader({super.key, required this.image});
    final String image; 
  // final AllExpansesItemModel allExpansesItemModel;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
        width: 60,
        height: 60,
        decoration: ShapeDecoration(
          color: Color(0xFFFAFAFA),
          shape: OvalBorder(),
        ),
        child: SvgPicture.asset(image,),
      ),
      Spacer(),
       Transform.rotate(
                  angle: -1.5708 * 2,
                  child: Icon(Icons.arrow_back_ios_new_rounded, color: Color(0xff064061),),
                ),

      
    ]
    );
  }
}