import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/styles.dart';


class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key , required this.title, required this.subtitle, required this.image});
  final String title ;
  final String subtitle ;
  final String image ;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        title:  Text(title, style: AppStyles.styleSemiBold16,),
        subtitle:  Text(subtitle, style: AppStyles.styleRegular12,),
          leading:
              SvgPicture.asset(image ,),),
    );
            
  }
}
