import 'package:flutter/material.dart';
import 'package:newagogo/Screens/Login/login_screen.dart';
import 'package:gap/gap.dart';
import 'confirm_password.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold( appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MobileLoginScreen()));
          },
        ),
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "Reset Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                const Gap(5),
                const Center(
                  child: Text(
                    "Please enter your email. A verification pin will be sent to you to confirm your email.",
                  ),
                ),
                const SizedBox(height: 2),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Email",
                  ),
                ),
                Container(
                  width: 335.0,
                  height: 56.0,
                  margin: const EdgeInsets.only(top: 449.0, left: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1)),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfirmEmailScreen(
                                  email: '',
                                )),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF15158C),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(6.0),
                    ),
                    child: const Text("Reset Password"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
