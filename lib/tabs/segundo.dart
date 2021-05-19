import 'package:flutter/material.dart';
class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: Container(
        child: Center(
          child: Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.airplanemode_active,
                size: 160.0,
                color: Colors.pinkAccent,
              ),
              Text(
                "Second Tab",
                style: TextStyle(color: Colors.pinkAccent),
              )
            ],
          ),
        ),
      ),
    );
  }
}