import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomePieChart extends StatefulWidget {
  const IncomePieChart({
    super.key,
  });

  @override
  State<IncomePieChart> createState() => _IncomePieChartState();
}

class _IncomePieChartState extends State<IncomePieChart> {
  int sectionIndex = -1;

  @override
  Widget build(BuildContext context) {
    return PieChart(
        getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
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
              showTitle: false,
              value: 40,
              color: Color(0xff208CC8),
              radius: sectionIndex == 0 ? 60 : 40,
            ),
            PieChartSectionData(
              showTitle: false,
              value: 25,
              color: Color(0xff4EB7F2),
              radius: sectionIndex == 1 ? 60 : 40,
            ),
            PieChartSectionData(
              showTitle: false,
              value: 20,
              color: Color(0xff064061),
              radius: sectionIndex == 2 ? 60 : 40,
            ),
            PieChartSectionData(
              showTitle: false,
              value: 22,
              color: Color(0xffE2DECD),
              radius: sectionIndex == 3 ? 60 : 40,
            ),
          ]);
  }
}
