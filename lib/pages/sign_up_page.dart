import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:srijan_app/constants.dart';
import 'package:srijan_app/pages/email_signup_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/lss.png',
                  ),
                  height: kNewValue,
                  width: kNewValue,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Plants',
                  style: kSplashScreenTextStyle.copyWith(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.teal.shade300,
                ),
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.teal.shade800,
              ),
              child: TextButton(
                onPressed: null,
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ),
                    Spacer(),
                    Text(
                      'Continue with Google',
                      textAlign: TextAlign.center,
                      style: kSignUpTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.teal,
                ),
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.teal.shade800,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmailSignUpPage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.envelope,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Sign up with Email',
                      textAlign: TextAlign.start,
                      style: kSignUpTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Already have an account?',
                    style: kButtonTextStyle,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Login!',
                      style: kButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
