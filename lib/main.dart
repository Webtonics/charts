import 'package:charts/hompage.dart';
import 'package:charts/onboarding/onboarding_screen.dart';
import 'package:charts/route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyOnboardingScreen();
    // return Scaffold(
    //   body: Center(
    //     child: Lottie.network(
    //         'https://lottie.host/b6f215e1-923f-4cb4-9a16-21b19757c1e1/U6ghjvpBcC.json'),
    //   ),
    // );
  }
}
