import 'package:flutter/material.dart';
import 'package:tracker_ui/utils/colors.dart';

class Summary extends StatelessWidget {
  const Summary({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Summary",
              style: Theme.of(context).textTheme.display1.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1.0,
                  ),
            ),
            SizedBox(height: 7),
            Text(
              "Covid-19 Disease",
              style: Theme.of(context).textTheme.caption.copyWith(
                    color: darkPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 20),
            Text(
              "Coronavirus disease is an infectious disease caused by a newly discovered coronavirus.",
              style: TextStyle(color: darkPrimaryColor.withOpacity(0.5)),
            ),
            SizedBox(height: 40),
            Image.asset("assets/chart.png"),
            SizedBox(height: 20),
            Text(
              "Covid-19 Cases",
              style: TextStyle(color: darkPrimaryColor.withOpacity(0.5)),
            ),
            SizedBox(height: 20),
            Text(
              "737,204",
              style: Theme.of(context).textTheme.display1.copyWith(
                    fontWeight: FontWeight.bold,
                    color: secondaryColor,
                  ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Deaths",
                      style: TextStyle(color: darkPrimaryColor),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "35,020",
                      style: Theme.of(context).textTheme.headline.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Recovered",
                      style: TextStyle(color: darkPrimaryColor),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "156,263",
                      style: Theme.of(context).textTheme.headline.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF73D7B0)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 80,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Please, stay home\nif you are sick!",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(Icons.info_outline, color: Colors.white)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
