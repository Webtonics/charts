import 'package:charts/onboarding/pageviews/pageview1.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../route.dart';
import 'pageviews/pageview2.dart';
import 'pageviews/pageview3.dart';
import 'pageviews/pageview4.dart';

class MyOnboardingScreen extends StatefulWidget {
  const MyOnboardingScreen({super.key});

  @override
  State<MyOnboardingScreen> createState() => _MyOnboardingScreenState();
}

class _MyOnboardingScreenState extends State<MyOnboardingScreen> {
  final PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) => setState(() {
              onLastPage = (index == 3);
            }),
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
                onLastPage
                    ? GestureDetector(
                        child: const Chip(
                          padding: EdgeInsets.all(8),
                          label: Text("back"),
                        ),
                        onTap: () => _controller.jumpToPage(0),
                      )
                    : GestureDetector(
                        child: const Chip(
                          padding: EdgeInsets.all(8),
                          label: Text("Skip"),
                        ),
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
                onLastPage
                    ? GestureDetector(
                        onTap: () => Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => const MyRouter()),
                            (route) => false),
                        child: const Chip(
                          padding: EdgeInsets.all(8),
                          label: Text("Done"),
                        ))
                    : GestureDetector(
                        onTap: () => _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                        child: const Chip(
                            padding: EdgeInsets.all(8), label: Text("next")))
              ],
            ),
          )
        ],
      ),
    );
  }
}
