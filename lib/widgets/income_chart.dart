
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1,
    child: Container(child: PieChart(getChartData())));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
         activeIndex =  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
         setState(() {
           
         });
        } ,
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: activeIndex == 0  ? 60: 40,
          value: 40,
          color: Color(0xFF208CC8),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeIndex == 1  ? 60: 40,
          value: 25,  
          color: Color(0xFF4EB7F2),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeIndex == 2  ? 60: 40,
          value: 20,
          color: Color(0xFF064061),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeIndex == 3  ? 60: 40,
          value: 22,
          color: Color(0xFFE2DECD),
          showTitle: false,
        ),
      ],
    );
  }
}
