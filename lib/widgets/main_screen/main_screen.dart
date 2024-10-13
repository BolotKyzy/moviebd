import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/movie_list/movie_list_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
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
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Text("Новости"),
          MovieListWidgte(),
          Text("Сериалы"),
        ],
      ),
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
