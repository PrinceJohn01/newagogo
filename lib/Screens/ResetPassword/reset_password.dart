import 'package:flutter/material.dart';
import 'package:newagogo/Screens/Login/login_screen.dart';
import 'package:newagogo/constants.dart';
import 'confirm_password.dart';


class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) => const MobileLoginScreen()));
              },
            ),
            const Text(
              "Reset Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Please enter your email. A verification pin will be sent to you to confirm your email.",
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Email",
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Implement reset password logic here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ConfirmEmailScreen(email: '',)),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                padding: const EdgeInsets.symmetric(horizontal: 32),
              ),
              child: const Text("Reset Password"),
            ),
          ],
        ),
      ),
    );
  }
}
