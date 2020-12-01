import 'package:flutter/material.dart';
import 'package:movie_time_app/models/geners_list.dart';
import 'package:movie_time_app/movies/movie_screen.dart';

class Categories extends StatelessWidget {
  final int index;
  Categories(this.index);
  @override
  Widget build(BuildContext context) {
    // final id = routeargs['id'];
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(MovieDetails.routeName, arguments: {
                    'id': comedyList[index].id,
                    'title': comedyList[index].title,
                    'imageUrl': comedyList[index].imageUrl,
                    'description': comedyList[index].description,
                    'rating': comedyList[index].rate,
                    'year': comedyList[index].year,
                    'duration': comedyList[index].duration,
                  });
                },
                child: Column(children: [
                  Card(
                    elevation: 15,
                    child: Hero(
                      tag: comedyList[index].id,
                      child: Container(
                          height: 230,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      comedyList[index].imageUrl)))),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    comedyList[index].title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ])))
        /* Container(
            //Drama
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(MovieDetails.routeName, arguments: {
                    'id': dramaList[index].id,
                    'title': dramaList[index].title,
                    'imageUrl': dramaList[index].imageUrl,
                    'description': dramaList[index].description,
                    'rating': dramaList[index].rate,
                    'year': dramaList[index].year,
                    'duration': dramaList[index].duration,
                  });
                },
                child: Column(children: [
                  Card(
                    elevation: 15,
                    child: Hero(
                      tag: dramaList[index].id,
                      child: Container(
                          height: 230,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      dramaList[index].imageUrl)))),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    dramaList[index].title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]))),
        Container(
            //Drama
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(MovieDetails.routeName, arguments: {
                    'id': actionList[index].id,
                    'title': actionList[index].title,
                    'imageUrl': actionList[index].imageUrl,
                    'description': actionList[index].description,
                    'rating': actionList[index].rate,
                    'year': actionList[index].year,
                    'duration': actionList[index].duration,
                  });
                },
                child: Column(children: [
                  Card(
                    //Action
                    elevation: 15,
                    child: Hero(
                      tag: actionList[index].id,
                      child: Container(
                          height: 230,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      actionList[index].imageUrl)))),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    actionList[index].title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ])))*/
      ],
    );
  }
}
