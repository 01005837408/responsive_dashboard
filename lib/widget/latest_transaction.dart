import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widget/custom_text_field.dart';
import 'package:responsive_dashboard/widget/latest_transaction_list_view.dart';
import 'package:responsive_dashboard/widget/quick_invioce.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction", style: AppStyles.styleMedium16,),
        Gap(12),
        LatestTransactionListView(),
        Divider(height: 24,),

        
      ],
    );
  }
}
