import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MyPieChart extends StatelessWidget {
  const MyPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("Pie Chart"),
      ),
      body: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            height: 450,
            width: 600,
            child: PieChart(
              PieChartData(
                  startDegreeOffset: 10,
                  centerSpaceRadius: 5,
                  sectionsSpace: 2,
                  borderData: FlBorderData(show: false),
                  sections: [
                    PieChartSectionData(
                        value: 32,
                        color: Colors.blue,
                        title: "Online",
                        radius: 120),
                    PieChartSectionData(
                        value: 62,
                        color: Colors.red[900],
                        title: "Social media",
                        radius: 120),
                    PieChartSectionData(
                        value: 42,
                        color: Colors.black,
                        title: "Offline",
                        titleStyle: const TextStyle(color: Colors.white),
                        radius: 120),
                    PieChartSectionData(
                        value: 19,
                        color: Colors.deepPurple,
                        title: "Radio",
                        radius: 120),
                    PieChartSectionData(
                        value: 60,
                        color: Colors.pink,
                        title: "Radio",
                        radius: 120),
                    PieChartSectionData(
                        value: 44,
                        color: Colors.cyan,
                        title: "Radio",
                        radius: 120),
                  ]),
              swapAnimationCurve: Curves.bounceIn,
              swapAnimationDuration: const Duration(seconds: 7),
            ),
          ),
        ),
      ),
    );
  }
}
