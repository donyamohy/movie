import 'package:flutter/material.dart';
import 'package:movie_time_app/models/movie_list.dart';
//import '../models/movie_list.dart';
import 'movie_screen.dart';

class VerticalListItem extends StatelessWidget {
  final int index;
  VerticalListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(MovieDetails.routeName, arguments: {
              'id': topRatedlist[index].id,
              'title': topRatedlist[index].title,
              'imageUrl': topRatedlist[index].imageUrl,
              'description': topRatedlist[index].description,
              'rating': topRatedlist[index].rate,
              'year': topRatedlist[index].year,
              'duration': topRatedlist[index].duration,
            });
          },
          child: Card(
            elevation: 5,
            child: Row(children: [
              Hero(
                tag: topRatedlist[index].id,
                child: Container(
                  height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.17,
                  width: (MediaQuery.of(context).size.width -
                          MediaQuery.of(context).padding.left) *
                      0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(topRatedlist[index].imageUrl),
                      )),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(8),
                  height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.19,
                  width: (MediaQuery.of(context).size.width -
                          MediaQuery.of(context).padding.left) *
                      0.65,
                  child: Column(
                    children: [
                      Text(topRatedlist[index].title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                        //width: 5,
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width -
                                MediaQuery.of(context).padding.left) *
                            0.6,
                        child: Text(topRatedlist[index].description),
                      )
                    ],
                  )),
            ]),
          ),
        ),
      ]),
    );
  }
}
