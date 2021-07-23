import 'package:flutter_svg/svg.dart';
import 'package:venni/routes/partnerTerms.dart';
import 'package:venni/routes/partners.dart';
import 'package:venni/styles.dart';
import 'package:venni/widgets/appButton.dart';
import 'package:venni/widgets/overallPadding.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: AppColors.primaryPink,
        alignment: Alignment.topCenter,
        child: OverallPadding(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        "images/logo-horizontal-white.svg",
                        width: screenWidth / 6,
                      ),
                    ),
                    AppButton(
                      textData: "Trabalhe Conosco",
                      height: 50,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                      hasShadow: false,
                      border: Border.all(color: Colors.white, width: 2),
                      onTapCallBack: () =>
                          Navigator.pushNamed(context, Partners.routeName),
                    )
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
                              text: "Faça viagens de moto com",
                              style: TextStyle(
                                fontSize: 60,
                                color: Colors.white,
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w300,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " segurança",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: " e por um ",
                                ),
                                TextSpan(
                                  text: " preço justo",
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
                              InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  "images/appstore.svg",
                                  width: screenWidth / 5,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  "images/googleplay.svg",
                                  width: screenWidth / 5,
                                ),
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
                            image: AssetImage("images/iphoneClient.png"),
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
