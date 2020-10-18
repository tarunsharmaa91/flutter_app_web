import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: pageChildren(constraints.biggest.width/3),
          ),
        );
      } else {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width),
          ),
        );
      }
    });
  }

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Application \n Developer",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "I have taken each and every project handed over to me as challenge which helped me achieve high project success rate",
                style: TextStyle(fontSize: 17.0, color: Colors.white),
              ),
            ),
            MaterialButton(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: Text("Show Data",
                    style: TextStyle(color: Colors.red, fontSize: 12.0)),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Image.asset(
          "images/complexity.jpeg",
          width: width,
        ),
      )
    ];
  }
}
