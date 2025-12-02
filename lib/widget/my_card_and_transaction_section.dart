import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';
 import 'package:responsive_dashboard/widget/my_card_section.dart';
import 'package:responsive_dashboard/widget/transaction_history.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: const Column(
        children: [
          MyCardSection(),
         
          Divider(height: 32,),
          // SizedBox(height: 16,),
          TransactionHistory(),
          //SizedBox(height: 16,),
          
        ],
      ),
    );
  }
}
