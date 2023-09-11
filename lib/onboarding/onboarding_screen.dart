import 'package:charts/onboarding/pageviews/pageview1.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'pageviews/pageview2.dart';
import 'pageviews/pageview3.dart';
import 'pageviews/pageview4.dart';

class MyOnboardingScreen extends StatefulWidget {
  const MyOnboardingScreen({super.key});

  @override
  State<MyOnboardingScreen> createState() => _MyOnboardingScreenState();
}

class _MyOnboardingScreenState extends State<MyOnboardingScreen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              Pageview1(),
              Pageview2(),
              Pageview3(),
              Pageview4(),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: const Alignment(0, 0.90),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //skip
                GestureDetector(
                  child: const Text("Skip"),
                  onTap: () => _controller.jumpToPage(3),
                ),
                SmoothPageIndicator(
                  effect: const ColorTransitionEffect(
                    dotColor: Colors.white,
                    activeDotColor: Colors.red,
                    dotWidth: 7,
                    dotHeight: 7,
                  ),
                  controller: _controller,
                  count: 4,
                ),
                // next
                GestureDetector(
                    onTap: () => _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn),
                    child: const Text("next"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
