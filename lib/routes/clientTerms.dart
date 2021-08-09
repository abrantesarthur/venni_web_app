import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:venni/widgets/overallPadding.dart';

class ClientTerms extends StatelessWidget {
  static String routeName = "/termos/clientes";

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
                      child: Image.asset(
                        "images/logo-horizontal-pink.png",
                        width: screenWidth / 6,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight / 20),
                Text("Estes são os termos dos clientes",
                    style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
