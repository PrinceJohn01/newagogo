import 'package:flutter/material.dart';
import '../../../constants.dart';

class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset('assets/image/company_logo.png',),
            ),
            const Spacer(),
          ],
        ),
        const Text(
          "Signup to AgoGo",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
         const SizedBox(height: defaultPadding * 2),

               const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
