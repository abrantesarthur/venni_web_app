import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("HELLO WORLD"),
            ],
          ),
        ),
      ),
    );
  }
}
