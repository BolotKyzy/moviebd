import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/password_form.dart';
import 'package:themoviedb/widgets/auth/user_name_form.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

TextEditingController userController = TextEditingController(text: 'altyn');
TextEditingController pswController = TextEditingController(text: 'ilim');

class _FormWidgetState extends State<FormWidget> {
  String warning = '';
  _login() {
    if (userController.text == 'altyn' && pswController.text == "ilim") {
      setState(() {
        warning = "You are loged in";
      });
      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      setState(() {
        warning =
            "Your username or password is wrong! Please try again, or register!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          warning,
          style: TextStyle(color: Colors.red, fontSize: 18),
        ),
        UserNameForm(ctr: userController),
        SizedBox(
          height: 20,
        ),
        PasswordForm(
          ctr: pswController,
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: _login,
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Color(0xff01B4E4))),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Reset password",
                style: TextStyle(color: Color(0xff01B4E4)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
