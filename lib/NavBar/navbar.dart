import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth>1200){
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
              Text("Resume", style: TextStyle(
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
    return Container(
      child: Row(
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
              Text("Resume", style: TextStyle(
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