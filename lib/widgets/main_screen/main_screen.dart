import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  static const List<Widget> _selectedTab = <Widget>[
    Text("Новости"),
    Text("Фильмы"),
    Text("Сериалы"),
  ];
  void onSelectedtab(index) {
    if (index == _currentIndex) return;
    setState(() {
      _currentIndex = index;
    });
  }

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
      body: Center(child: _selectedTab[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onSelectedtab,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Новости'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.movie_filter,
                ),
                label: 'Фильмы'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.tv,
                ),
                label: 'Сериалы')
          ]),
    );
  }
}
