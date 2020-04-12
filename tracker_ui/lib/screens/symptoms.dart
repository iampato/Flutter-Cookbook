import 'package:flutter/material.dart';
import 'package:tracker_ui/utils/colors.dart';

class Symptoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Symptoms",
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
              "People may be sick with the virus for 1 to 14 days before developing any symptoms.",
              style: TextStyle(color: darkPrimaryColor.withOpacity(0.5)),
            ),
            SizedBox(height: 40),
            Image.asset("assets/illustration.png"),
            SizedBox(height: 20),
            Text(
              "What symptoms do you experience?",
              style: Theme.of(context).textTheme.title.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1.0,
                  ),
            ),
            SizedBox(height: 15),
            Wrap(
              children: <Widget>[
                myContainer(false, "Fever"),
                myContainer(true, "Runny Nose"),
                myContainer(false, "Cough"),
                myContainer(false, "Sore Throat"),
                myContainer(true, "Headache"),
                myContainer(true, "Cough"),
                myContainer(false, "Fatigue"),
                myContainer(false, "Dsypnoea")
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget myContainer(bool selected, String content) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: selected ? secondaryColor : secondaryColor.withOpacity(0.15),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            content,
            style: TextStyle(color: selected ? Colors.white : darkPrimaryColor),
          ),
        ),
      ),
    );
  }
}
