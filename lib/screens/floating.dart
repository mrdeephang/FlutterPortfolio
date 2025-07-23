import 'package:flutter/material.dart';
import 'package:portfolio/easyconst/colors.dart';

class Floating extends StatefulWidget {
  const Floating({super.key});

  @override
  State<Floating> createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Action', style: TextStyle(color: color1)),
        centerTitle: true,
        backgroundColor: color,
      ),
      body: Center(child: Text('Add here')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // int count = 0;
          // count++;
          // // print('Button pressed $count times');
          // // Action to perform when the button is pressed
        },
        child: Icon(Icons.message),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
