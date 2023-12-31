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
                    style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                ),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: const Color(0xFFF9F9F9),
                  borderRadius: BorderRadius.circular(9)),
              child: TextFormField(textDirection: TextDirection.ltr,
                textInputAction: TextInputAction.done,
                obscureText: _obscurePassword,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  hintText: "Password",
                  fillColor: const Color(0xFFF9F9F9),
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
              width: 335.0,
              height: 56.0,
              margin: const EdgeInsets.only(top: 449.0, left: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                onPressed: () {
                  _showChangePasswordDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF15158C),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(6.0),
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

void _showChangePasswordDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Align(
        alignment: Alignment.bottomCenter, // Align the dialog to the bottom center
        child: AlertDialog(
          contentPadding: const EdgeInsets.all(16.0),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end, // Align content to the right
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Icon(Icons.close),
              ),
              const SizedBox(height: 8),
              const Center(child: Text("Password Changed", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black))),
              const SizedBox(height: 8),
              const Center(child: Text("You have successfully changed your password.", style: TextStyle(color: Colors.black),)),
              const SizedBox(height: 16),
             ],
          ),
          contentTextStyle: const TextStyle(fontSize: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      );
    },
  );
}
