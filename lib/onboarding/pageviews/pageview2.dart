import 'package:flutter/material.dart';

class Pageview2 extends StatelessWidget {
  const Pageview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[300],
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Column(
            children: const [Text("View Different charts")],
          ),
        ),
      ),
    );
  }
}
