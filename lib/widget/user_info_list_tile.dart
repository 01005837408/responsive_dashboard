import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/model/user_info_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';


class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key , required this.userInfoModel});
  final UserInfoModel userInfoModel ;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        title:  Text(userInfoModel.title, style: AppStyles.styleSemiBold16,),
        subtitle:  Text(userInfoModel.subtitle, style: AppStyles.styleRegular12,),
          leading:
              SvgPicture.asset(userInfoModel.image ,),),
    );
            
  }
}
