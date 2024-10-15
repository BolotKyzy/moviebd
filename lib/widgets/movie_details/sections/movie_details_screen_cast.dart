import 'package:flutter/material.dart';
import 'package:themoviedb/resources/resources.dart';

class MovieDetailsScreenCast extends StatelessWidget {
  const MovieDetailsScreenCast({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Series Cast",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 350,
            child: Scrollbar(
              child: ListView.builder(
                  itemCount: 20,
                  itemExtent: 120,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.2)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 8,
                                    offset: Offset(0, 2))
                              ]),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            clipBehavior: Clip.hardEdge,
                            child: Column(
                              children: [
                                Image(image: AssetImage(AppImages.actor)),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Text("Steven Yeun"),
                                      Text("Mark  Grayson / Invicible (voice)"),
                                      Text("8 Episodes")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ));
                  }),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Full Cast  & Crew",
              )),
        ],
      ),
    );
  }
}
