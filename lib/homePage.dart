import 'package:Venni/styles.dart';
import 'package:Venni/widgets/overallPadding.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverallPadding(
        child: Container(
          color: AppColors.primaryPink,
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
