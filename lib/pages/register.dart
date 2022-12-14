import 'package:flutter/material.dart';
import 'package:test_app/shared/color.dart';
import 'package:test_app/shared/textfields.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    var textField = TextField();
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
              ),
              MyTextField(
                texttype: TextInputType.text,
                ispass: false,
                hinttext: "Please, Enter Your username : ",
              ),
              const SizedBox(
                height: 33,
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
              const SizedBox(
                height: 33,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 19),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(BTNgreen),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do not have an account?",
                      style: TextStyle(fontSize: 18)),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: Text('sign in',
                          style: TextStyle(color: Colors.black, fontSize: 18))),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
