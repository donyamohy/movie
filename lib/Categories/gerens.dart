import 'package:flutter/material.dart';
import 'package:movie_time_app/Categories/comedy_list_item.dart';
import 'package:movie_time_app/models/geners_list.dart';

class Gerens extends StatelessWidget {
  static const routec = '/comedy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.search), onPressed: () {})
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
            //search
            child: Column(children: [
          Container(
            alignment: Alignment.topLeft,
            // child: IconButton(
            //   icon: Icon(Icons.menu),
            // iconSize: 43,
            //color: Colors.indigo,
            //onPressed: null),
          ),

          //horizontal
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Comedy ',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                //FlatButton(onPressed: () {}, child: Text('View All'))
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(8),
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: comedyList.length,
                itemBuilder: (ctx, i) => Categories(i),
                // scrollDirection: Axis.horizontal,
              )),
          /*  Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Drama',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                //FlatButton(onPressed: () {}, child: Text('View All'))
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(8),
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: comedyList.length,
                itemBuilder: (ctx, i) => Categories(i),
                // scrollDirection: Axis.horizontal,
              )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Action',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                //FlatButton(onPressed: () {}, child: Text('View All'))
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(8),
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: comedyList.length,
                itemBuilder: (ctx, i) => Categories(i),
                // scrollDirection: Axis.horizontal,
              ))*/
        ])));
  }
}
