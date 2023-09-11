import 'package:flutter/material.dart';

class Pageview3 extends StatelessWidget {
  const Pageview3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Column(
            children: const [Text("Bar chart, line chart, pie chart")],
          ),
        ),
      ),
    );
  }
}
