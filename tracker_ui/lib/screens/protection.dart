import 'package:flutter/material.dart';
import 'package:tracker_ui/utils/colors.dart';

class Protection extends StatelessWidget {
  const Protection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Protection",
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
              "There’s currently no vaccine to prevent this disease. You can protect yourself and help prevent spreading the virus if you:",
              style: TextStyle(color: darkPrimaryColor.withOpacity(0.5)),
            ),
            SizedBox(height: 40),
            Image.asset("assets/icon-caugh.png"),
            SizedBox(height: 20),
            Text(
              "Cover your cough",
              style: Theme.of(context).textTheme.title.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1.0,
                  ),
            ),
            SizedBox(height: 10),
            Text(
              "Cover your nose and mouth with a disposable tissue.",
              style: TextStyle(color: darkPrimaryColor.withOpacity(0.5)),
            ),
            SizedBox(height: 40),
            Image.asset("assets/icon-wash-hands.png"),
            SizedBox(height: 20),
            Text(
              "Wash your hands",
              style: Theme.of(context).textTheme.title.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1.0,
                  ),
            ),
            SizedBox(height: 10),
            Text(
              "With soap & water or alcohol-based hand rub.",
              style: TextStyle(color: darkPrimaryColor.withOpacity(0.5)),
            )
          ],
        ),
      ),
    );
  }
}
