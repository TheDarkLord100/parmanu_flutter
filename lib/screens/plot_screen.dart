import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

import '../services/chart.dart';
import '../services/line_graph.dart';

class PlotScreen extends StatefulWidget {
  const PlotScreen({Key? key}) : super(key: key);

  @override
  State<PlotScreen> createState() => _PlotScreenState();
}

class _PlotScreenState extends State<PlotScreen> {
  final List<ChartData> chartData1 = [
    ChartData(10, 186.5),
    ChartData(20, 234.6),
    ChartData(30, 334.6),
    ChartData(40, 235.8),
    ChartData(50, 243.3),
  ];

  final List<ChartData> chartData2 = [
    ChartData(21, 24.5),
    ChartData(22, 27.7),
    ChartData(23, 35.1),
    ChartData(24, 16.3),
    ChartData(25, 29.0),
  ];

  final List<ChartData> chartData3 = [
    ChartData(100, 85.6),
    ChartData(200, 78.8),
    ChartData(300, 97.4),
    ChartData(400, 87.7),
    ChartData(500, 96.8),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      child: BlurryContainer(
          color: Colors.white.withOpacity(0.15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Graph(
                      chartTitle: 'Chart 1',
                      xAxis: ChartAxisData(
                          label: 'X Axis 1',
                          maximum: 50,
                          minimum: 0,
                          interval: 10),
                      yAxis: ChartAxisData(
                          label: 'Y Axis 1',
                          maximum: 500,
                          minimum: 0,
                          interval: 100),
                      chartData: chartData1,
                      legendText: 'Series 1',
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                      child: Graph(
                    chartTitle: 'Chart 2',
                    xAxis: ChartAxisData(
                        label: 'X Axis 2',
                        maximum: 25,
                        minimum: 20,
                        interval: 1),
                    yAxis: ChartAxisData(
                        label: 'Y Axis 2',
                        maximum: 40,
                        minimum: 10,
                        interval: 5),
                    chartData: chartData2,
                    legendText: 'Series 2',
                  )),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                      child: Graph(
                    chartTitle: 'Chart 3',
                    xAxis: ChartAxisData(
                        label: 'X Axis 3',
                        maximum: 500,
                        minimum: 0,
                        interval: 100),
                    yAxis: ChartAxisData(
                        label: 'Y Axis 3',
                        maximum: 100,
                        minimum: 60,
                        interval: 5),
                    chartData: chartData3,
                    legendText: 'Series 3',
                  )),
                ],
              )),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Graph(
                      chartTitle: 'Chart 4',
                      xAxis: ChartAxisData(
                          label: 'X Axis 4',
                          maximum: 500,
                          minimum: 100,
                          interval: 100),
                      yAxis: ChartAxisData(
                          label: 'Y Axis 4',
                          maximum: 100,
                          minimum: 75,
                          interval: 5),
                      chartData: chartData3,
                      legendText: 'Series 4',
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Graph(
                      chartTitle: 'Chart 5',
                      xAxis: ChartAxisData(
                          label: 'X Axis 5',
                          maximum: 50,
                          minimum: 0,
                          interval: 5),
                      yAxis: ChartAxisData(
                          label: 'Y Axis 5',
                          maximum: 350,
                          minimum: 150,
                          interval: 50),
                      chartData: chartData1,
                      legendText: 'Series 5',
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Graph(
                      chartTitle: 'Chart 6',
                      xAxis: ChartAxisData(
                          label: 'X Axis 6',
                          maximum: 25,
                          minimum: 21,
                          interval: 1),
                      yAxis: ChartAxisData(
                          label: 'Y Axis 6',
                          maximum: 35,
                          minimum: 15,
                          interval: 5),
                      chartData: chartData2,
                      legendText: 'Series 6',
                    ),
                  ),
                ],
              )),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: Graph(
                    chartTitle: 'Chart 7',
                    xAxis: ChartAxisData(
                        label: 'X Axis 7',
                        maximum: 25,
                        minimum: 21,
                        interval: 0.5),
                    yAxis: ChartAxisData(
                        label: 'Y Axis 7',
                        maximum: 36,
                        minimum: 16,
                        interval: 2),
                    chartData: chartData2,
                    legendText: 'Series 7',
                  )),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                      child: Graph(
                    chartTitle: 'Chart 8',
                    xAxis: ChartAxisData(
                        label: 'X Axis 8',
                        maximum: 500,
                        minimum: 100,
                        interval: 50),
                    yAxis: ChartAxisData(
                        label: 'Y Axis 8',
                        maximum: 100,
                        minimum: 75,
                        interval: 3),
                    chartData: chartData3,
                    legendText: 'Series 8',
                  )),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                      child: Graph(
                    chartTitle: 'Chart 9',
                    xAxis: ChartAxisData(
                        label: 'X Axis 9',
                        maximum: 50,
                        minimum: 0,
                        interval: 10),
                    yAxis: ChartAxisData(
                        label: 'Y Axis 9',
                        maximum: 340,
                        minimum: 180,
                        interval: 20),
                    chartData: chartData1,
                    legendText: 'Series 9',
                  )),
                ],
              )),
            ],
          )),
    );
  }
}
