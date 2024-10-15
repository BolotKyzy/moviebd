import 'package:flutter/material.dart';
import 'package:themoviedb/constants/app_colors.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';
import 'package:themoviedb/widgets/main_screen/main_screen.dart';
import 'package:themoviedb/widgets/movie_details/movie_details.dart';

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
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              backgroundColor: AppColors.mainDarkBlue),
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.mainDarkBlue,
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/main_screen': (context) => MainScreen(),
        '/movie_screen/movie_details': (context) {
          final id = ModalRoute.of(context)!.settings.arguments as int;
          return MovieDetails(id: id);
        },
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
