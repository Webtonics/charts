import 'package:charts/constants/onboading.dart';
import 'package:charts/constants/spacer.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../route.dart';

class Pageview4 extends StatelessWidget {
  const Pageview4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink[400],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    // flex: 1,
                    child: Text(
                  "Start using the app",
                  style: onboardTextStyle,
                )),

                Expanded(
                    // flex: 2,
                    child: Lottie.asset('assets/animation_lmfm0vui.json')),

                // Expanded(
                //   flex: 1,
                //   child: ElevatedButton(
                //       onPressed: () {
                //         Navigator.of(context).pushAndRemoveUntil(
                //             MaterialPageRoute(
                //                 builder: (context) => const MyRouter()),
                //             (route) => false);
                //       },
                //       style: ElevatedButton.styleFrom(
                //           minimumSize: const Size(400, 40)),
                //       child: const Text("Get started")),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
