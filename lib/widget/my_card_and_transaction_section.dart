import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/my_card_section.dart';
import 'package:responsive_dashboard/widget/transaction_history.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardSection(),
       
        Divider(height: 32,),
        // SizedBox(height: 16,),
        TransactionHistory(),
      ],
    );
  }
}