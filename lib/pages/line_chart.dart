import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants/spacer.dart';

class MyLineChart extends StatelessWidget {
  const MyLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("Line Chart"),
      ),
      body: Column(
        children: [
          spacer,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 450,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(21)),
              child: AspectRatio(
                aspectRatio: 2,
                child: LineChart(LineChartData(
                    // rangeAnnotations: RangeAnnotations(),
                    gridData: FlGridData(show: false),
                    betweenBarsData: [],
                    borderData: FlBorderData(
                        show: true,
                        border: Border.all(
                          color: Colors.white54,
                          style: BorderStyle.solid,
                        )),
                    maxX: 20,
                    maxY: 21,
                    backgroundColor: Colors.white,
                    titlesData: FlTitlesData(
                        show: true,
                        bottomTitles:
                            AxisTitles(axisNameWidget: const Text("X Axis")),
                        rightTitles:
                            AxisTitles(axisNameWidget: const Text("Y axis")),
                        leftTitles: AxisTitles(
                            drawBehindEverything: true,
                            axisNameWidget: Text("data")),
                        topTitles: AxisTitles()),
                    lineBarsData: [
                      LineChartBarData(
                        color: Colors.blue,
                        spots: const [
                          FlSpot(0, 0),
                          FlSpot(2, 8),
                          FlSpot(4, 15),
                          FlSpot(5, 17),
                          FlSpot(7, 10),
                          FlSpot(8, 8),
                          FlSpot(9, 17),
                          FlSpot(10, 20),
                          FlSpot(12, 10),
                          FlSpot(17, 21),
                        ],
                        belowBarData: BarAreaData(
                            // show: true,
                            // color: Colors.blue,
                            spotsLine: BarAreaSpotsLine(show: false)),
                        preventCurveOverShooting: true,
                        isCurved: true,
                      )
                    ])),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
