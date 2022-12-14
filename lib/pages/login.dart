import 'package:flutter/material.dart';
import 'package:test_app/pages/register.dart';
import 'package:test_app/shared/color.dart';
import 'package:test_app/shared/textfields.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var textField = TextField();
    return SafeArea(
      child: Scaffold(
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
            const SizedBox(
              height: 33,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Sign in",
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
                Text("Do not have an account?", style: TextStyle(fontSize: 18)),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()),
                      );
                    },
                    child: Text('sign up',
                        style: TextStyle(color: Colors.black, fontSize: 18))),
              ],
            )
          ],
        ),
      )),
    );
  }
}
