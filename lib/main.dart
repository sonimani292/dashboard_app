import 'package:dashboard_app/griddashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.whit,
      appBar: AppBar(
        title: Text('Home Screen'),
        //don't change.
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.cyan[300],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 125),
            child: Text('Chef Zone',
                style: GoogleFonts.openSans(
                    fontSize: 55, fontWeight: FontWeight.bold)),
          ),
          GridDashboard(),
        ],
      ),
    );
  }
}
