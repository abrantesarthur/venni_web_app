import 'package:flutter/material.dart';
import 'package:venni_website/styles.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryPink,
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
