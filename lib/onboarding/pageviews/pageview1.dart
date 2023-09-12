import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../constants/onboading.dart';

class Pageview1 extends StatelessWidget {
  const Pageview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Text(
                    "Welcome to Charts",
                    style: onboardTextStyle,
                  )),
              Expanded(
                  flex: 1,
                  child: Text(
                    "Viewing chart has never been easy",
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: onboardingSubTextStyle,
                  )),
              Expanded(
                flex: 8,
                child: Center(
                    child: Lottie.asset('assets/animation_lmflafmr.json')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
