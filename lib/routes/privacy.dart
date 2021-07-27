import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:venni/widgets/overallPadding.dart';

class Privacy extends StatelessWidget {
  static String routeName = "/privacidade";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.topCenter,
        child: OverallPadding(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset(
                        "images/logo-horizontal-pink.svg",
                        width: screenWidth / 6,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight / 20),
                Text(
                  "Estes são os termos de privacidade",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
