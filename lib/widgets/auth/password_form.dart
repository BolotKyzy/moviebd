import 'package:flutter/material.dart';

class PasswordForm extends StatelessWidget {
  final TextEditingController ctr;

  const PasswordForm({
    super.key,
    required this.ctr,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Password',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          onChanged: (str) {
            print(str);
          },
          controller: ctr,
          obscureText: true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 2, color: Color(0xff01B4E4))),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Color(0xff212529))),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Color(0xff212529))),
            disabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Color(0xff212529))),
          ),
        )
      ],
    );
  }
}
