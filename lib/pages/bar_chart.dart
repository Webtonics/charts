import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyBarChart extends StatelessWidget {
  const MyBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("Bar Chart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // child: BarChart(
        //   BarChartData(
        //     minY: 0,
        //     maxY: double.maxFinite,
        //     barGroups: [
        //       BarChartGroupData(x: 21, barRods: [
        //         BarChartRodData(toY: 6, color: Colors.black),
        //         BarChartRodData(toY: 12)
        //       ]),
        //       // BarChartGroupData(
        //       //     x: 10,
        //       //     barRods: [BarChartRodData(toY: 8), BarChartRodData(toY: 17)]),
        //       // BarChartGroupData(x: 23, barRods: [
        //       //   BarChartRodData(toY: 11),
        //       //   BarChartRodData(toY: 22)
        // //       // ]),
        //     ],
        //   ),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25)),
          child: AspectRatio(
            aspectRatio: 1,
            child: BarChart(
              BarChartData(
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(
                    show: true,
                    topTitles: AxisTitles(),
                    rightTitles: AxisTitles(),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: const Border(
                      top: BorderSide.none,
                      right: BorderSide.none,
                      left: BorderSide(width: 2, color: Colors.black),
                      bottom: BorderSide(width: 2, color: Colors.black),
                    ),
                  ),
                  groupsSpace: 10,
                  maxY: 30,
                  barGroups: [
                    BarChartGroupData(x: 1, barRods: [
                      BarChartRodData(
                        fromY: 0,
                        toY: 10,
                        color: Colors.amber,
                        width: 10,
                        // borderRadius: const BorderRadius.only(
                        //     bottomLeft: Radius.zero,
                        //     bottomRight: Radius.zero),
                      ),
                    ]),
                    BarChartGroupData(x: 2, barRods: [
                      BarChartRodData(
                        fromY: 0,
                        toY: 11,
                        color: Colors.amber,
                        width: 10,
                        // borderRadius: const BorderRadius.only(
                        //     bottomLeft: Radius.zero,
                        //     bottomRight: Radius.zero),
                      ),
                    ]),
                    BarChartGroupData(x: 3, barRods: [
                      BarChartRodData(
                        fromY: 0,
                        toY: 9,
                        color: Colors.amber,
                        width: 10,
                        // borderRadius: const BorderRadius.only(
                        //     bottomLeft: Radius.zero,
                        //     bottomRight: Radius.zero),
                      ),
                    ]),
                    BarChartGroupData(x: 4, barRods: [
                      BarChartRodData(
                        fromY: 0,
                        toY: 14,
                        color: Colors.amber,
                        width: 10,
                        // borderRadius: const BorderRadius.only(
                        //     bottomLeft: Radius.zero,
                        //     bottomRight: Radius.zero),
                      ),
                    ]),
                    BarChartGroupData(x: 5, barRods: [
                      BarChartRodData(
                        fromY: 0,
                        toY: 18,
                        color: Colors.amber,
                        width: 10,
                        // borderRadius: const BorderRadius.only(
                        //     bottomLeft: Radius.zero,
                        //     bottomRight: Radius.zero),
                      ),
                    ]),
                    BarChartGroupData(x: 6, barRods: [
                      BarChartRodData(
                        fromY: 0,
                        toY: 20,
                        color: Colors.amber,
                        width: 10,
                        // borderRadius: const BorderRadius.only(
                        //     bottomLeft: Radius.zero,
                        //     bottomRight: Radius.zero),
                      ),
                    ]),
                    BarChartGroupData(x: 7, barRods: [
                      BarChartRodData(
                        fromY: 0,
                        toY: 10,
                        color: Colors.amber,
                        width: 10,
                        // borderRadius: const BorderRadius.only(
                        //     bottomLeft: Radius.zero,
                        //     bottomRight: Radius.zero),
                      ),
                    ]),
                    BarChartGroupData(x: 8, barRods: [
                      BarChartRodData(
                        fromY: 0,
                        toY: 12,
                        color: Colors.amber,
                        width: 10,
                        // borderRadius: const BorderRadius.only(
                        //     bottomLeft: Radius.zero,
                        //     bottomRight: Radius.zero),
                      ),
                    ]),
                  ]),
            ),
          ),
        ),
      ),

      // ),
    );
  }
}
