import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widget/dots_indicator.dart';
import 'package:responsive_dashboard/widget/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key,});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
   late PageController pageController;

   int currentPageIndex = 0;  
   @override
   void initState() {
     super.initState();
     pageController = PageController();
     pageController.addListener(() {
       currentPageIndex = pageController.page!.round();
       setState(() {
        
       });
     });
   }
   @override
   void dispose() {
     pageController.dispose();
     super.dispose();
   }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 20, ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Card", style: AppStyles.styleSemiBold20(context)),
          Gap(8,),
          MyCardPageView(pageController: pageController),
          Gap(8),
          DotsIndicator(currentIndex: currentPageIndex),
        ],
      ),
    );
  }
}
