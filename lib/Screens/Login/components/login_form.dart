import 'package:flutter/material.dart';
import 'package:newagogo/Screens/ResetPassword/reset_password.dart';
import '../../../already_have_an_account_check.dart';
import '../../../constants.dart';
import '../../Signup/signup_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscurePassword = true;
  bool _rememberMe = false;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
            const Text(
              'Login to AgoGo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text("Email",
                    style: TextStyle(color: Colors.black, fontSize: 16))),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8)),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                onSaved: (email) {},
                decoration: const InputDecoration(
                  hintText: "Email",
                  border: InputBorder.none,
                  fillColor: Colors.grey,
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(16),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(2),
                  ),
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text('Password',
                    style: TextStyle(color: Colors.black, fontSize: 16))),
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
            const SizedBox(height: defaultPadding),
            Hero(
              tag: "login_btn",
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = value!;
                    });
                  },
                ),
                const Text("Remember Me"),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
                      );
                  },
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(
                      color: Color(0x007a7acc),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MobileSignupScreen();
                    },
                  ),
                );
              },
            ),
          ]),
        ),
    );
  }
}
