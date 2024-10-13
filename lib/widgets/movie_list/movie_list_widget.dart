import 'package:flutter/material.dart';
import 'package:themoviedb/resources/resources.dart';

class MovieListWidgte extends StatelessWidget {
  const MovieListWidgte({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemExtent: 163,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Stack(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 2))
                      ]),
                  child: Row(
                    children: [
                      Image(image: AssetImage(AppImages.movieImg)),
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
                              'Deadpool & Wolverine',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "July 24, 2024",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.",
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
        });
  }
}
