import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailsIncomeChart extends StatefulWidget {
  const DetailsIncomeChart({super.key});

  @override
  State<DetailsIncomeChart> createState() => _DetailsIncomeChartState();
}

class _DetailsIncomeChartState extends State<DetailsIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(child: PieChart(getChartData())),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      
      pieTouchData: PieTouchData(
        
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          radius: activeIndex == 0 ? 60 : 40,
          title: activeIndex == 0 ?  'Design service' :'40%' ,
          value: 40,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color:activeIndex == 0 ?  null: Colors.white),
         
          color: Color(0xFF208CC8),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.3 : null,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 1 ?  null: Colors.white),
          radius: activeIndex == 1 ? 60 : 40,
          title: activeIndex == 1 ?  'Design product': '25%',
          color: Color(0xFF4EB7F2),
          value: 25,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 2 ?  null: Colors.white),
          radius: activeIndex == 2 ? 60 : 40,
          title: activeIndex == 2 ?  'Product royalti':'20%',
          color: Color(0xFF064061),
          value: 20,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 3 ?  null: Colors.white ),
          radius: activeIndex == 3 ? 60 : 40,
          title: activeIndex == 3 ?  'Other': '22%',
          color: Color(0xFFE2DECD),
          value: 22,
        ),
      ],
    );
  }
}
