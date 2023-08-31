import 'package:flutter/material.dart';
import '../../constants.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  _ResetPasswordFormState createState() => _ResetPasswordFormState();
}
  class _ResetPasswordFormState extends State<ResetPasswordForm> {
  bool _obscurePassword = true;
  bool _rememberMe = false;

  void _togglePasswordVisibility() {
  setState(() {
  _obscurePassword = !_obscurePassword;
  });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Reset Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8,),
            const Text(
              'Enter a new password',
              style: TextStyle(
                color: Color(0xFF575757)
                ,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 16),
            const SizedBox(
              height: defaultPadding,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text("New Password",
                    style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold))),

            Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8)),
              child: TextFormField(
                textDirection: TextDirection.ltr,
                textInputAction: TextInputAction.done,
                obscureText: _obscurePassword,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  hintText: "Password",
                  fillColor: Colors.grey,
                  alignLabelWithHint: true,
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(_obscurePassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: _togglePasswordVisibility,
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(defaultPadding),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const SizedBox(
              height: defaultPadding,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text("Confirm Password",
                    style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold))),

            Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: Color(0xFFF9F9F9),
                  borderRadius: BorderRadius.circular(9)),
              child: TextFormField(textDirection: TextDirection.ltr,
                textInputAction: TextInputAction.done,
                obscureText: _obscurePassword,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  hintText: "Password",
                  fillColor: Color(0xFFF9F9F9),
                  alignLabelWithHint: true,
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(_obscurePassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: _togglePasswordVisibility,
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(defaultPadding),
                  ),
                ),

              ),
            ),
            const SizedBox(height: 32),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(defaultPadding),
              child: ElevatedButton(
                onPressed: () {
                  // Implement change password logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF15158C),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                ),
                child: const Text("Change Password"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
