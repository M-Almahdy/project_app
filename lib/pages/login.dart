import 'package:flutter/material.dart';
import 'package:test_app/shared/textfields.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var textField = TextField();
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const SizedBox(
            height: 64,
          ),
          MyTextField(
            texttype: TextInputType.emailAddress,
            ispass: false,
            hinttext: "Please, Enter Your Email : ",
          ),
          const SizedBox(
            height: 33,
          ),
          MyTextField(
            texttype: TextInputType.text,
            ispass: true,
            hinttext: "Please, Enter Your Password : ",
          ),
        ],
      ),
    ));
  }
}
