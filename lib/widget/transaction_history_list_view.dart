import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/model/transaction_histry_model.dart';
import 'package:responsive_dashboard/widget/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
    static const  items =  [
      TransactionHistoryModel(
        title:"Cash Withdrawal",
        amount: r"$400.00",
        date: "13 Apr, 2022 ", 
        isWithdrawn: true,
      ),
       TransactionHistoryModel(
        title:"Cash Withdrawal",
        amount: r"$400.00",
        date: "13 Apr, 2022 ", 
        isWithdrawn: true,
      ),
       TransactionHistoryModel(
        title:"Cash Withdrawal",
        amount: r"$400.00",
        date: "13 Apr, 2022 ", 
        isWithdrawn: true,
      ),
      

    ];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return TransactionHistoryItem(transactionHistryModel: items[index],);
      },
    );
  }
}