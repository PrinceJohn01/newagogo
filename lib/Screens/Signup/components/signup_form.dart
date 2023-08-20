import 'package:flutter/material.dart';
import '../../../already_have_an_account_check.dart';
import '../../../constants.dart';
import '../../Login/login_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const Text(
            'Signup to AgoGo',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child:
            Text("Email",style: TextStyle(
                color: Colors.black,
                fontSize: 16))),
          Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8)),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              cursorColor: kPrimaryColor,
              onSaved: (email) {},
              decoration: const InputDecoration(
                hintText: "Email",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ),
            ),
          ),
      const SizedBox(height: defaultPadding),
      const Align(
        alignment: Alignment.centerLeft,
        child:
        Text('Password', style: TextStyle(
            color: Colors.black,
            fontSize: 16))),
              Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8)),
                child: TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: _obscurePassword,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(defaultPadding),
                  ),
                ),
          ),
              ),
      const SizedBox(height: defaultPadding),
      const Align(
        alignment: Alignment.centerLeft,
        child:
        Text('Confirm password', style: TextStyle(
            color: Colors.black,
            fontSize: 16))),
            Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8)),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: _obscurePassword,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(defaultPadding),
                  ),
                ),
              ),
            ),
          const SizedBox(height: defaultPadding / 3),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(defaultPadding),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF15158C),
                foregroundColor: Colors.white
              ),
              child: const Text("Signup"),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MobileLoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
