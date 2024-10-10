import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';
import 'package:themoviedb/widgets/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(backgroundColor: const Color.fromRGBO(3, 37, 65, 1))),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/main_screen': (context) => MainScreen()
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text("Произошла ошибка навигации!"),
            ),
          );
        });
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff032141),
          title: Center(
            child: Text(
              "Login to your account",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        body: AuthWidget());
  }
}
