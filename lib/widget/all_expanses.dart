import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expanses_header.dart';
import 'package:responsive_dashboard/widget/all_expanses_item_list_view.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';

class AllExpanses extends StatelessWidget {
  const AllExpanses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      children: [
        AllExpansesHeader(), // first part in expanses
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AllExpansesItemListView(),
        ),
      ],
    ));
  }
}
