import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio App",
      home: Portfolio(),
      // debugShowCheckedModeBanner: false,
    );
  }
}
//above is internal build

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PorfolioState();
}

class _PorfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Portfolio',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        //column is used to arrange widgets vertically i.e layout widget
        children: [
          //Support for multiple widgets in a column
          // Image.asset('assets/images/pfp.jpg'),
          SizedBox(height: 10), // Space between app bar and profile picture
          Center(
            child: Column(
              //only one widget can be child of Center
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/pfp.jpg'),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(height: 10), // Space between profile picture and name
                Text(
                  'Deephang Thegim',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
