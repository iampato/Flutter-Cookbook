import 'package:flutter/material.dart';
import 'package:tracker_ui/home.dart';
import 'package:tracker_ui/utils/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          iconTheme: IconThemeData(
            color: lightPrimaryColor,
          )),
      home: MyHomePage(),
    );
  }
}
