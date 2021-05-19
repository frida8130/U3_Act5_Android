import 'package:flutter/material.dart';
import 'package:sanchez/tabs/primero.dart';
import 'package:sanchez/tabs/segundo.dart';
import 'package:sanchez/tabs/tercero.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Using Tabs",
      // Home
      debugShowCheckedModeBanner: false,
      home: MyHome()));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
   TabController controller;
  @override
  void initState() {
    super.initState();
    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
} //fin de iniciar estado

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    
    // Appbar
    appBar: AppBar(
      // Title
      title: Text("Bottom Navigation Angelica"),
      // Set the background color of the App Bar
      backgroundColor: Colors.purple[200],
    ),
    // Set the TabBar view as the body of the Scaffold
    body: TabBarView(
      // Add tabs as widgets
      children: <Widget>[
        FirstTab(),
        SecondTab(),
        ThirdTab()
      ],
      // set the controller
      controller: controller,
    ),
    // Set the bottom navigation bar
    bottomNavigationBar: Material(
      // set the color of the bottom navigation bar
      color: Colors.purple,
      // set the tab bar as the child of bottom navigation bar
      child: TabBar(
        tabs: <Tab>[
          Tab(
            // set icon to the tab
            icon: Icon(Icons.add_location_alt_outlined),
          ),
          Tab(
            icon: Icon(Icons.airplanemode_active),
          ),
          Tab(
            icon: Icon(Icons.audiotrack),
          ),
        ],
        // setup the controller
        controller: controller,
      ),
    ),
  );
}
}