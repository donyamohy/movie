import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movie_time_app/models/movie_list.dart';
//import 'package:movie_time_app/user_profile.dart';
import 'movies/horizontal_list_item.dart';
import 'movies/vertical_list_item.dart';
//import 'package:movie_time_app/movies/movie_screen.dart';
import 'Categories/gerens.dart';
//import 'package:movie_time/Widget/Ver_list.dart';
//import 'horizontal_list.dart';

class HomeScreen extends StatelessWidget {
  static const routehome = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Movie Time'),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.search), onPressed: () {})
              ],
            )
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new ListTile(
                  trailing: new Icon(
                    Icons.supervised_user_circle,
                  ),
                  // GestureDetector(
                  // onTap: () {
                  //Navigator.of(context).pushNamed(Gerens.routec);
//child:
                  title: new FlatButton(
                    child: Text(
                      'Your Profile',
                    ),
                    onPressed: () {
                      //  Navigator.of(context).pushNamed(Gerens.routec);
                    },
                  )),
              new ListTile(
                  trailing: new Icon(Icons.movie),
                  title: new FlatButton(
                    child: Text(
                      'Choose Category',
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(Gerens.routec);
                    },
                  )),
              new ListTile(
                  trailing: new Icon(
                    Icons.favorite,
                    color: Colors.red[900],
                  ),
                  title: new FlatButton(
                    child: Text(
                      'Favorites',
                    ),
                    onPressed: () {
                      // Navigator.of(context).pushNamed(Gerens.routec);
                    },
                  )),
              new ListTile(
                  trailing:
                      new Icon(Icons.notifications, color: Colors.yellow[900]),
                  title: new FlatButton(
                    child: Text(
                      'Notifications',
                    ),
                    onPressed: () {
                      //Navigator.of(context).pushNamed(Gerens.routec);
                    },
                  )),
              new ListTile(
                  trailing: new Icon(Icons.settings, color: Colors.grey[800]),
                  title: new FlatButton(
                    child: Text(
                      'Settings',
                    ),
                    onPressed: () {
                      // Navigator.of(context).pushNamed(Gerens.routec);
                    },
                  )),
              new ListTile(
                  trailing: new Icon(Icons.logout, color: Colors.grey[800]),
                  title: new FlatButton(
                    child: Text(
                      'Log out',
                    ),
                    onPressed: () {
                      //  Navigator.of(context).pushNamed(Gerens.routec);
                    },
                  )),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            alignment: Alignment.topLeft,
            // child: IconButton(
            //   icon: Icon(Icons.menu),
            // iconSize: 43,
            //color: Colors.indigo,
            //onPressed: null),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('New Releases',
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(8),
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (ctx, i) => HorizontalListItem(i),
                // scrollDirection: Axis.horizontal,
              )),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top rated ',
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.65,
              width: (MediaQuery.of(context).size.width -
                      MediaQuery.of(context).padding.left) *
                  0.9,
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                itemCount: topRatedlist.length,
                itemBuilder: (ctx, i) => VerticalListItem(i),
              ))
        ])));
  }
}
