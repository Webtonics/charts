// import 'package:charts/bar%20chart/single_bar.dart';
import 'package:charts/pages/bar_chart.dart';
import 'package:charts/pages/pie_chart.dart';
import 'package:flutter/material.dart';

import 'constants/spacer.dart';
import 'pages/line_chart.dart';

class MyRouter extends StatelessWidget {
  const MyRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Charts"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MyButton(title: "Line Chart", page: MyLineChart()),
              spacer,
              const MyButton(title: "Bar Chart", page: MyBarChart()),
              spacer,
              const MyButton(title: "Pie Chart", page: PieChart()),
              spacer,
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.title, required this.page});

  final String title;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => page));
          },
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 60)),
          child: Text(title)),
    );
  }
}
