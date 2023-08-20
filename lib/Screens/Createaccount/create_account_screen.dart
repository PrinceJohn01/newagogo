import 'package:flutter/material.dart';
import 'package:newagogo/Screens/Createaccount/components/createaccount_form.dart';
import '../../constants.dart';
import '../../responsive.dart';
import 'components/create_account_top_image.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body: SingleChildScrollView(
        child: Responsive(
          mobile: MobileCreateAccountScreen(),
          desktop: Row(
            children: [
              Expanded(
                child: CreateAccountScreenTopImage(),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 450,
                      child: CreateAccountForm(),
                    ),
                    SizedBox(height: defaultPadding / 2),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

class MobileCreateAccountScreen extends StatelessWidget {
  const MobileCreateAccountScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFFEDEDFF),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const SizedBox(height: 110,),
            const Padding(padding: EdgeInsets.all(1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CreateAccountScreenTopImage()
                ],
              ),
            ),
            Expanded(child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    CreateAccountForm()
                  ],
                ),

              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
