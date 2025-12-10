import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widget/transaction_history_header.dart';
import 'package:responsive_dashboard/widget/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 8,),
        Text("13 April 2022", style: AppStyles.styleMedium16(context).copyWith(color: Color(0xff9CA3AF)),),
        SizedBox(height: 8,),

       TransactionHistoryListView()
      ],
    );
  }
}
