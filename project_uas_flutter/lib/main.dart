import 'package:flutter/material.dart';
import 'package:project_uas_flutter/screens/detail_news.dart';
import 'package:project_uas_flutter/screens/detail_place.dart';
import 'package:project_uas_flutter/screens/home.dart';
import 'package:project_uas_flutter/screens/login.dart';
import 'package:project_uas_flutter/screens/profil.dart';
import 'package:project_uas_flutter/screens/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
      routes: {
          '/login': (BuildContext ctx) => Login(),
          '/register': (BuildContext ctx) => Register(),
          '/home': (BuildContext ctx) => Home(),
          '/profil': (BuildContext ctx) => Profil(),
          '/detail_destination': (BuildContext ctx) => DetailPlace(),
          '/detail_news': (BuildContext ctx) => DetailNews()
        }
    );
  }
}

