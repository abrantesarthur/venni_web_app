import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:venni/styles.dart';
import 'package:venni/widgets/overallPadding.dart';

class Partners extends StatelessWidget {
  static String routeName = "parceiros";

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
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              text:
                                  "Baixe o app de parceiros, se registre e ganhe",
                              style: TextStyle(
                                fontSize: 60,
                                color: AppColors.primaryPink,
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w300,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " dinheiro",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(text: " com"),
                                TextSpan(
                                  text: " tranquilidade",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: screenHeight / 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                "images/appstore.svg",
                                width: screenWidth / 5,
                              ),
                              SvgPicture.asset(
                                "images/googleplay.svg",
                                width: screenWidth / 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("images/iphonePartner.png"),
                            height: 0.8 * screenHeight,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
