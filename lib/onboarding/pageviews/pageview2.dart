import 'package:charts/constants/onboading.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Pageview2 extends StatelessWidget {
  const Pageview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink[300],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              children: [
                Text(
                  "View Different charts",
                  style: onboardTextStyle,
                ),
                Expanded(child: Lottie.asset('assets/animation_lmflborb.json'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
