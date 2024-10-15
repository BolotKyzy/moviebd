import 'package:flutter/material.dart';
import 'package:themoviedb/constants/movie_list.dart';

class MovieListWidgte extends StatefulWidget {
  MovieListWidgte({super.key});

  @override
  State<MovieListWidgte> createState() => _MovieListWidgteState();
}

class _MovieListWidgteState extends State<MovieListWidgte> {
  var filteredMovies = <Movie>[];
  final ctr = TextEditingController();

  void _searchMovies() {
    String query = ctr.text;
    if (query.isNotEmpty) {
      filteredMovies = movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      filteredMovies = movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    filteredMovies = movies;
    ctr.addListener(_searchMovies);
  }

  void _onMovieTap(int id) {
    Navigator.of(context)
        .pushNamed('/movie_screen/movie_details', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            padding: EdgeInsets.only(top: 70),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: filteredMovies.length,
            itemExtent: 163,
            itemBuilder: (BuildContext context, index) {
              final movie = filteredMovies[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Stack(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.black.withOpacity(0.2)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: Offset(0, 2))
                          ]),
                      child: Row(
                        children: [
                          Image(image: AssetImage(movie.imgName)),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  movie.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  movie.time,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  movie.description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () => _onMovieTap(movie.id),
                      ),
                    )
                  ],
                ),
              );
            }),
        Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: ctr,
            decoration: InputDecoration(
                labelText: 'Search',
                filled: true,
                fillColor: Colors.white.withAlpha(235),
                border: OutlineInputBorder()),
          ),
        )
      ],
    );
  }
}
