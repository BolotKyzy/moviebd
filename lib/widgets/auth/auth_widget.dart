import 'package:flutter/material.dart';
import 'package:themoviedb/constants/text_styles.dart';
import 'package:themoviedb/widgets/auth/form_widget.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple.',
              style: TextStyles.firstTextStyle,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Register",
                style: TextStyle(fontSize: 16, color: Color(0xff01B4E4)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("If you signed up but didn't get your verification email",
                style: TextStyles.firstTextStyle),
            TextButton(
              onPressed: () {},
              child: Text(
                "Verify email",
                style: TextStyle(fontSize: 16, color: Color(0xff01B4E4)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FormWidget()
          ],
        ),
      ),
    );
  }
}
