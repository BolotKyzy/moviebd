import 'package:themoviedb/resources/resources.dart';

class Movie {
  final int id;
  final String imgName;
  final String title;
  final String time;
  final String description;

  Movie(
      {required this.id,
      required this.imgName,
      required this.title,
      required this.time,
      required this.description});
}

List<Movie> movies = [
  Movie(
      id: 1,
      imgName: AppImages.movieImg,
      title: "Film",
      time: "July 24, 2024",
      description:
          "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
  Movie(
      id: 2,
      imgName: AppImages.movieImg,
      title: "Смертельная битва",
      time: "July 24, 2024",
      description:
          "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
  Movie(
      id: 3,
      imgName: AppImages.movieImg,
      title: "Прибытие",
      time: "July 24, 2024",
      description:
          "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
  Movie(
      id: 4,
      imgName: AppImages.movieImg,
      title: "Назад в будущее 1",
      time: "July 24, 2024",
      description:
          "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
  Movie(
      id: 5,
      imgName: AppImages.movieImg,
      title: "Назад в будущее 2",
      time: "July 24, 2024",
      description:
          "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
  Movie(
      id: 6,
      imgName: AppImages.movieImg,
      title: "Назад в будущее 3",
      time: "July 24, 2024",
      description:
          "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
  Movie(
      id: 7,
      imgName: AppImages.movieImg,
      title: "Назад в будущее 4",
      time: "July 24, 2024",
      description:
          "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
];
