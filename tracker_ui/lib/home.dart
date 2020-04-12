import 'package:flutter/material.dart';
import 'package:tracker_ui/screens/protection.dart';
import 'package:tracker_ui/screens/summary.dart';
import 'package:tracker_ui/screens/symptoms.dart';
import 'package:tracker_ui/utils/sidepanel.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: SidePanel(pageController:pageController),
          ),
          Flexible(
            flex: 3,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                controller: pageController,
                children: <Widget>[
                  Summary(),
                  Symptoms(),
                  Protection(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

 
}
