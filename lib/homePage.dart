import 'package:flutter_svg/svg.dart';
import 'package:venni/styles.dart';
import 'package:venni/widgets/appButton.dart';
import 'package:venni/widgets/overallPadding.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
                    SvgPicture.asset(
                      "images/logo-horizontal-white.svg",
                      width: screenWidth / 10,
                    ),
                    AppButton(
                      textData: "Trabalhe Conosco",
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                      hasShadow: false,
                      border: Border.all(color: Colors.white, width: 2),
                      onTapCallBack: () {},
                    )
                  ],
                ),
                SizedBox(height: screenHeight / 10),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              text: "Faça viajens de moto com",
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
                          Text(
                            "hello",
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("Hello"),
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
