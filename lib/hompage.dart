import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<double> data = [
    12.0,
    23.8,
    19.6,
    17.8,
    23.6,
    19.0,
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
