import 'package:flutter/material.dart';
import 'package:parmanu_flutter/services/chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Graph extends StatefulWidget {
  const Graph(
      {Key? key,
      required this.xAxis,
      required this.yAxis,
      required this.chartData,
      required this.legendText})
      : super(key: key);
  final ChartAxisData? xAxis;
  final ChartAxisData? yAxis;
  final List<ChartData> chartData;
  final String legendText;

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      backgroundColor: Colors.black.withOpacity(.5),
      primaryXAxis: NumericAxis(
        rangePadding: ChartRangePadding.normal,
          minimum: widget.xAxis?.minimum,
          maximum: widget.xAxis?.maximum,
          interval: widget.xAxis?.interval,
          title: AxisTitle(
              text: widget.xAxis?.label,
              textStyle: const TextStyle(color: Colors.black))),
      primaryYAxis: NumericAxis(
          rangePadding: ChartRangePadding.normal,
          minimum: widget.yAxis?.minimum,
          maximum: widget.yAxis?.maximum,
          interval: widget.yAxis?.interval,
          title: AxisTitle(
              text: widget.yAxis?.label,
              textStyle: const TextStyle(color: Colors.black))),
      series: <ChartSeries>[
        // Initialize line series
        LineSeries<ChartData, int>(
          color: Colors.black,
            legendItemText: widget.legendText,
            dataSource: widget.chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            // dataLabelMapper: ,
            dataLabelSettings: const DataLabelSettings(isVisible: true))
      ],
      legend: Legend(
        isVisible: true,
        title: LegendTitle(
            text: 'Legend',
            textStyle: const TextStyle(color: Colors.black),
            alignment: ChartAlignment.near),
      ),
    );
  }
}


