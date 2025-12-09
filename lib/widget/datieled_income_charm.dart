import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class DatieledIncomePieChart extends StatefulWidget {
  const DatieledIncomePieChart({
    super.key,
  });

  @override
  State<DatieledIncomePieChart> createState() => _IncomePieChartState();
}

class _IncomePieChartState extends State<DatieledIncomePieChart> {
  int sectionIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        // centerSpaceRadius: 0,
        pieTouchData: PieTouchData(
          touchCallback: (FlTouchEvent event, pieTouchResponse) {
            sectionIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: sectionIndex == 0 ? 1.5 : null,
            title: sectionIndex == 0 ? "Design Service" : "40%",
            titleStyle: AppStyles.styleMedium16.copyWith(
                color: sectionIndex == 0 ? Colors.black : Colors.white),
            showTitle: true,
            value: 40,
            color: Color(0xff208CC8),
            radius: sectionIndex == 0 ? 40 : 32,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: sectionIndex == 1 ? 2 : null,
            title: sectionIndex == 1 ? "Design pruduct" : "25%",
            titleStyle: AppStyles.styleMedium16.copyWith(
                color: sectionIndex == 1 ? Colors.black : Colors.white),
            showTitle: true,
            value: 25,
            color: Color(0xff4EB7F2),
            radius: sectionIndex == 1 ? 40 : 32,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: sectionIndex == 2 ? 1.5 : null,
            title: sectionIndex == 2 ? "Design Royalit" : "20%",
            titleStyle: AppStyles.styleMedium16.copyWith(
                color: sectionIndex == 2 ? Colors.black : Colors.white),
            showTitle: true,
            value: 20,
            color: Color(0xff064061),
            radius: sectionIndex == 2 ? 40 : 32,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: sectionIndex == 3 ? 1.5 : null,
            title: sectionIndex == 3 ? "Others" : "22%",
            titleStyle: AppStyles.styleMedium16.copyWith(
                color: sectionIndex == 3 ? Colors.black : Colors.white),
            showTitle: true,
            value: 22,
            color: Color(0xffE2DECD),
            radius: sectionIndex == 3 ? 40 : 32,
          ),
        ]);
  }
}
