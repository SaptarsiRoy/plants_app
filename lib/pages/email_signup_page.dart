import 'package:flutter/material.dart';
import 'package:srijan_app/constants.dart';

class EmailSignUpPage extends StatelessWidget {
  EmailSignUpPage({Key? key}) : super(key: key);

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
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
              ),
              SizedBox(
                height: 20,
              ),
              textFormField(
                controller: _emailController,
                title: 'Enter E-Mail',
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
                      title: 'Confrim Password',
                    ),
                  )
                ],
              )
            ],
          ),
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
