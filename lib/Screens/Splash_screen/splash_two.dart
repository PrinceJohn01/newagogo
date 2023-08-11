import 'package:flutter/material.dart';
import 'package:newagogo/Screens/Login/login_screen.dart';
import 'package:newagogo/Screens/Login/new_login.dart';

class SplashScreenTwo extends StatelessWidget {
  const SplashScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NewLogin()));
    });

    return  Scaffold(
      body: Center(
        child: Image.asset('assets/image/company_logo.png',),
      ),
    );
  }
}
