import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth>800){
        return DesktopNavBar();
      }else{
        return MobileNavBar();
      }
    });
  }

}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Tarun", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30
          ),),

          Row(
            children: [
              Text("Home", style: TextStyle(
                  color: Colors.white
              ),
              ),
              Text("About Me", style: TextStyle(
                  color: Colors.white
              ),
              ),
              Text("Blog", style: TextStyle(
                  color: Colors.white
              ),
              )

            ],
          )
        ],
      ),
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tarun Sharma", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30
            ),),

            Row(
              children: [
                Text("Home", style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text("About Me", style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text("Blog", style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                ),
                ),
                SizedBox(
                  width: 30,
                ),

                MaterialButton(
                  color: Colors.pink,
                    onPressed: (){},
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),

                    )
              ],
            )
          ],
        ),
      ),
    );
  }
}