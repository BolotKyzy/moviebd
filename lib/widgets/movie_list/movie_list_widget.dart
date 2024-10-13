import 'package:flutter/material.dart';
import 'package:themoviedb/resources/resources.dart';

class Movie {
  final String imgName;
  final String title;
  final String time;
  final String description;

  Movie(
      {required this.imgName,
      required this.title,
      required this.time,
      required this.description});
}

class MovieListWidgte extends StatefulWidget {
  MovieListWidgte({super.key});

  @override
  State<MovieListWidgte> createState() => _MovieListWidgteState();
}

class _MovieListWidgteState extends State<MovieListWidgte> {
  List<Movie> _movies = [
    Movie(
        imgName: AppImages.movieImg,
        title: "Film",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
    Movie(
        imgName: AppImages.movieImg,
        title: "Смертельная битва",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
    Movie(
        imgName: AppImages.movieImg,
        title: "Прибытие",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
    Movie(
        imgName: AppImages.movieImg,
        title: "Назад в будущее 1",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
    Movie(
        imgName: AppImages.movieImg,
        title: "Назад в будущее 2",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
    Movie(
        imgName: AppImages.movieImg,
        title: "Назад в будущее 3",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
    Movie(
        imgName: AppImages.movieImg,
        title: "Назад в будущее 4",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
  ];

  var filteredMovies = <Movie>[];
  final ctr = TextEditingController();

  void _searchMovies() {
    String query = ctr.text;
    if (query.isNotEmpty) {
      filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    filteredMovies = _movies;
    ctr.addListener(_searchMovies);
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
                        onTap: () {
                          print("22");
                        },
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
