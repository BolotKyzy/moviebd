import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/movie_details/sections/movie_details_main_info.dart';
import 'package:themoviedb/widgets/movie_details/sections/movie_details_screen_cast.dart';

class MovieDetails extends StatelessWidget {
  final int id;
  const MovieDetails({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(221, 22, 21, 21),
        appBar: AppBar(
          title: Center(
            child: Text(
              'The movie DB',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: ListView(
          children: [MovieDetailsMainInfo(), MovieDetailsScreenCast()],
        ));
  }
}
