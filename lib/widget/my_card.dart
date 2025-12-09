import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 440/215, // width / height
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            
            image: AssetImage(Assets.assetsImagesCard),
            fit: BoxFit.cover,
          ),
        ),
      child: Column(
      
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(left: 20, right: 20, top: 0),
            title: Text("Name card", style: AppStyles.styleRegular16.copyWith(color: Colors.white),),
            subtitle: Text("View Details", style: AppStyles.styleMedium20,),
            trailing: SvgPicture.asset(Assets.assetsImagesGallery)
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text("0918 8124 0042 8129", style:AppStyles.styleSemiBold24.copyWith(color: Colors.white, ),)),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text("12/24 - 124", style: AppStyles.styleRegular16.copyWith(color: Colors.white),)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16,),
            
        ],
      ),
      
      )
    );
  }
}
