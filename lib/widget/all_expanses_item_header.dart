import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpansesItemHeader extends StatelessWidget {
  const AllExpansesItemHeader({super.key, required this.image , this.imageColor , this.imageBackgroundColor});
  final String image;
  // final AllExpansesItemModel allExpansesItemModel;
  final Color? imageColor , imageBackgroundColor;
  

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 60,
        height: 60,
        decoration: ShapeDecoration(
          color: imageBackgroundColor??Color(0xFFFAFAFA),
          shape: OvalBorder(),
        ),
        child: SvgPicture.asset(
          image,
        //  color: Colors.red,
          colorFilter: ColorFilter.mode(imageColor??Color(0xff4EB7F2), BlendMode.srcIn),
        ),
      ),
      Spacer(),
      Transform.rotate(
        angle: -1.5708 * 2,
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color:imageColor == null ? Color(0xff064061) : Colors.white,
        ),
      ),
    ]);
  }
}
