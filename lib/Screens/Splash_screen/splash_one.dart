import 'package:flutter/material.dart';
import 'package:newagogo/Screens/Splash_screen/splash_two.dart';


class SplashScreenOne extends StatelessWidget {
  const SplashScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 500),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SplashScreenTwo()));
    });

    return const Scaffold(
      backgroundColor: Color(0xFF15158C),
    );
  }
}
