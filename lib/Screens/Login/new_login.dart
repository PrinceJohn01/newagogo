import 'package:flutter/material.dart';
import 'package:newagogo/Screens/Login/components/login_form.dart';
import 'package:newagogo/Screens/Login/components/login_screen_top_image.dart';

class NewLogin extends StatelessWidget {
  const NewLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
           color: Color(0xFFEDEDFF),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const SizedBox(height: 80,),
            const Padding(padding: EdgeInsets.all(1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LoginScreenTopImage()
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    LoginForm()
                  ],
                ),

              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
