import 'package:flutter/material.dart';

class CreateAccountScreenTopImage extends StatelessWidget {
  const CreateAccountScreenTopImage({
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
       ],
    );
  }
}
