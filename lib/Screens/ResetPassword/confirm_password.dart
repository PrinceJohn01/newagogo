import 'package:flutter/material.dart';
import 'package:newagogo/Screens/ResetPassword/reset_password.dart';
import 'package:newagogo/constants.dart';

class ConfirmEmailScreen extends StatelessWidget {
  final String email;

  const ConfirmEmailScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ResetPasswordScreen()));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Confirm Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Please enter the verification pin sent to the email: $email',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Center(
              child: Row(
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Didn't get the link?"),
                TextButton(
                  onPressed: () {
                    // Implement resend logic here
                  },
                  child: const Text(
                    "Resend",
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(defaultPadding),
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF15158C),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                ),
                child: const Text("Submit Pin"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
