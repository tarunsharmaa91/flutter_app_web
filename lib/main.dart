import 'package:flutter/material.dart';
import 'package:flutter_app_web/LandingPage/LandingPage.dart';
import 'package:flutter_app_web/NavBar/navbar.dart';

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
        fontFamily: "Quicksand"
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end:  Alignment.centerRight,
            colors: [Color.fromRGBO(195, 20, 50, 1.0), Color.fromRGBO(36, 11, 54, 1.0)]
          )
        ),
        child: Column(
          children: [
            NavBar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: LandingPage(),
            )
          ],
        ),
      ),
    );
  }
}
