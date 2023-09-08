import 'package:flutter/material.dart';
import '../../../already_have_an_account_check.dart';
import '../../../constants.dart';
import '../../Login/login_screen.dart';

class CreateAccountForm extends StatefulWidget {
  const CreateAccountForm({
    Key? key,
  }) : super(key: key);

  @override
  _CreateAccountFormState createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm> {

  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(
            height: defaultPadding,
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text("First name",
                  style: TextStyle(color: Colors.black, fontSize: 16))),
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
                hintText: "First name",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text('Last name',
                  style: TextStyle(color: Colors.black, fontSize: 16))),
          Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8)),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Last name",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text('Referral code',
                  style: TextStyle(color: Colors.black, fontSize: 16))),
          Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8)),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Referral code",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding / 3),
          CheckboxListTile(
            title: const Text(
              "I have read, understood and hereby accept the above stated Terms, Conditions and Privacy Statements",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            value: _acceptTerms,
            onChanged: (newValue) {
              setState(() {
                _acceptTerms = newValue!;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
            activeColor: Colors.blue, // Customize the active color of the checkbox
          ),
          const SizedBox(height: defaultPadding),
          Container( width: 335.0,
            height: 56.0,
            margin: const EdgeInsets.only(top: 449.0, left: 20.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(6.0),
                  backgroundColor: const Color(0xFF15158C),
                  foregroundColor: Colors.white
              ),
              child: const Text("Create an account"),
            ),
          ),
          const SizedBox(height: defaultPadding),

        ],
      ),
    );
  }
}
