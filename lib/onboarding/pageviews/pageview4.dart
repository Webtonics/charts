import 'package:charts/constants/spacer.dart';
import 'package:flutter/material.dart';

import '../../route.dart';

class Pageview4 extends StatelessWidget {
  const Pageview4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      color: Colors.pink[400],
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: [
              spacer,
              spacer,
              const Text("Start using the app"),
              spacer,
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const MyRouter()),
                        (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.maxFinite, 70)),
                  child: const Text("Get started"))
            ],
          ),
        ),
      ),
    );
  }
}
