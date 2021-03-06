import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aiphim/view/home.dart';

void main() {
  runApp(
    MainApp(),
  );
}

class MainApp extends StatefulWidget {
  MainApp({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "AiPhim",
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: "Kozuka Gothic Pr6N",
          fontSizeFactor: 0.9,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Homepage(),
        Homepage.routeName: (context) => Homepage(),
      },
    );
  }
}
