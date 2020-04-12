import 'package:flutter/material.dart';

import 'package:tracker_ui/utils/colors.dart';
import 'dart:math' as math;

class SidePanel extends StatefulWidget {
  final PageController pageController;

  SidePanel({this.pageController});

  @override
  _SidePanelState createState() => _SidePanelState();
}

class _SidePanelState extends State<SidePanel> {
  List<String> sides = ["Summary", "Symptoms", "Protection"];
  double pageOffset = 0;
  final currentPageNotifier = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(() {
      setState(() {
        pageOffset = widget.pageController.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor.withOpacity(0.1),
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.apps,
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Icon(Icons.search),
            ),
            Expanded(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: sides.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int i) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            height: 65,
                            child: Center(
                              child: Transform.rotate(
                                angle: -math.pi / 2,
                                child: Text(
                                  sides[i],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: pageOffset.toInt() == i
                                        ? darkPrimaryColor
                                        : secondaryColor,
                                    fontWeight: pageOffset.toInt() == i
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            widget.pageController.animateToPage(
                              i,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                        ),
                        pageOffset.toInt() == i
                            ? Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                    color: secondaryColor,
                                    shape: BoxShape.circle),
                              )
                            : Container()
                      ],
                    ),
                  );
                },
              ),
            ),
            Image.asset("assets/Bitmap Copy.png"),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
