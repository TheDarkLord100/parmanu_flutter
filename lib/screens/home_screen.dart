import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../services/chart.dart';
import '../services/line_graph.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<ChartData> chartData = [
    ChartData(2001, 35),
    ChartData(2002, 39),
    ChartData(2003, 32),
    ChartData(2004, 34),
    ChartData(2005, 28),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(10),
        child: BlurryContainer(
          color: Colors.black.withOpacity(0.15),
          child: const Center(
            child: Text('Home Screen')
          ),
        ));
  }
}
