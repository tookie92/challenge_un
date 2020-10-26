import 'package:challenge_un/screens/home_screen.dart';
import 'package:challenge_un/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffdbdbdd),
        //primaryColor: Color(0xfffb930b),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        'second' : (context) => SecondScreen(),
      },
    );
  }
}

