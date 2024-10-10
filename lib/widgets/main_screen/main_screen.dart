import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'The movie DB',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
