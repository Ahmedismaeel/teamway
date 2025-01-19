import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Circular extends StatelessWidget {
  const Circular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ChartData> chartData = [
      ChartData("ahmed1", 7),
      ChartData("ahmed2", 12),
      ChartData("ahmed3", 4),
      ChartData("ahmed4", 2),
      ChartData("ahmed5", 11),
      ChartData("ahmed6", 3)
    ];
    return Center(
        child: Container(
            child: SfCircularChart(series: <CircularSeries>[
      // Renders radial bar chart
      RadialBarSeries<ChartData, String>(
          dataSource: chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y)
    ])));
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final int y;
}
