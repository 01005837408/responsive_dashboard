import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Transaction History',style: AppStyles.styleSemiBold20(context),),
          SizedBox(width: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, ),
            child: Text('See all',style: AppStyles.styleMedium16(context).copyWith(color: Color(0xff4EB7F2)),),
          )
        ],
      ),
    );
  }
}
