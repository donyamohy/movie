import 'package:flutter/material.dart';
import 'package:movie_time_app/Slider/get_started.dart';
//import 'package:movie_time_app/Slider/get_started.dart';
//import 'package:movie_time_app/sign_up.dart';
//import 'package:movie_time_app/Slider/get_started.dart';
//import 'package:flutter/services.dart';
//import 'package:movie_time_app/get_started.dart';
//import 'package:movie_time_app/login_screen.dart';
//import 'package:movie_time_app/movie_screen.dart';
import 'movies/movie_screen.dart';
import 'Registeration/log_in.dart';
import 'Registeration/signup.dart';
import 'home_screen.dart';
//import 'user_profile.dart';
//import 'log_in_screen.dart';
//import 'Categories/comedy_list_item.dart';
//import 'log_in.dart';

import 'Categories/gerens.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setPreferredOrientations([
  //DeviceOrientation.portraitDown,
  //DeviceOrientation.portraitUp,
  //  DeviceOrientation.landscapeLeft,
  //DeviceOrientation.landscapeRight,
  //]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Suggestion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.indigo, scaffoldBackgroundColor: Colors.white),
      home: StartScreen(),
      routes: {
        MovieDetails.routeName: (ctx) => MovieDetails(),
        LoginForm.routelogin: (ctx) => LoginForm(),
        SignUpForm.routesignup: (ctx) => SignUpForm(),
        HomeScreen.routehome: (ctx) => HomeScreen(),
        //MenuDashboardPage.routemenu: (ctx) => MenuDashboardPage(),
        Gerens.routec: (ctx) => Gerens(),
      },
    );
  }
}
