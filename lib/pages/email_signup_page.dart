import 'package:flutter/material.dart';
import 'package:srijan_app/constants.dart';
import 'package:srijan_app/widgets/keyboard_visibilty_builder.dart';

class EmailSignUpPage extends StatelessWidget {
  EmailSignUpPage({Key? key}) : super(key: key);

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  String? validateName(value) {
    bool validate = RegExp('[0-9]').hasMatch(value);
    return validate ? null : 'Name not accepted';
  }

  String? validateEmail(value) {
    bool validate = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    return validate ? null : 'Email not accepted';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.green.shade100,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            textFormField(
              controller: _nameController,
              title: 'Enter Name',
              validator: validateName,
            ),
            SizedBox(
              height: 20,
            ),
            textFormField(
              controller: _emailController,
              title: 'Enter E-Mail',
              validator: validateEmail,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 155,
                  child: textFormField(
                    controller: _passwordController,
                    title: 'Password',
                  ),
                ),
                Container(
                  width: 155,
                  child: textFormField(
                    controller: _confirmPasswordController,
                    title: 'Repeat Password',
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            HidingSignUpButton(),
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

  Container textFormField({
    required TextEditingController controller,
    String title = '',
    Function? validator,
    bool obscureText = false,
    String obscureChar = '*',
    TextInputType keyboard = TextInputType.name,
  }) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: kDetailsTextFieldStyle,
            ),
          ),
          TextFormField(
            style: TextStyle(
              color: Colors.black,
            ),
            keyboardType: keyboard,
            obscureText: obscureText,
            autocorrect: !obscureText,
            enableSuggestions: !obscureText,
            obscuringCharacter: obscureChar,
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ],
      ),
    );
  }
}

class HidingSignUpButton extends StatelessWidget with WidgetsBindingObserver {
  const HidingSignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
        builder: (context, child, isKeyboardVisible) {
      return isKeyboardVisible
          ? Container()
          : Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.teal,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                color: Colors.teal.shade800,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Sign Up',
                  style: kSignUpTextStyle,
                ),
              ),
            );
    });
  }
}
