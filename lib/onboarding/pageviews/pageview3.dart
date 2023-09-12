import 'package:charts/constants/onboading.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Pageview3 extends StatelessWidget {
  const Pageview3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink[200],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              children: [
                Text(
                  "Bar chart, line chart, pie chart",
                  style: onboardTextStyle,
                ),
                Expanded(child: Lottie.asset('assets/animation_lmflbthg.json'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
