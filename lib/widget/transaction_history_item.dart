import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/model/transaction_histry_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key , required this.transactionHistryModel});

 final TransactionHistoryModel transactionHistryModel;

  @override
  Widget build(BuildContext context) {
    return   Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title:Text(transactionHistryModel.title, style: AppStyles.styleSemiBold16(context),),
        subtitle: Text(transactionHistryModel.date, style: AppStyles.styleRegular16(context),),
        trailing: Text(
          transactionHistryModel.amount ,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionHistryModel.isWithdrawn ? Colors.green : Colors.red,
          ),
        ),
      ),
    );
  }
}