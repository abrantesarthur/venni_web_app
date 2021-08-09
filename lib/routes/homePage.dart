import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:venni/routes/partners.dart';
import 'package:venni/styles.dart';
import 'package:venni/widgets/appButton.dart';
import 'package:venni/widgets/overallPadding.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class HomePage extends StatelessWidget {
  static String routeName = "/";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // desktop
      if (constraints.maxWidth >= 760) {
        return Scaffold(
          body: Container(
            color: AppColors.primaryPink,
            alignment: Alignment.topCenter,
            child: OverallPadding(
              bottom: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildHeader(context, constraints),
                    SizedBox(height: screenHeight / 20),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              buildMainText(context, constraints),
                              SizedBox(height: screenHeight / 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  buildAppStoreIcon(context, constraints),
                                  buildGooglePlayIcon(context, constraints),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Image(
                            image: AssetImage("images/iphoneClient.png"),
                            height: 0.8 * screenHeight,
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

      // tablets and phones
      return Scaffold(
        body: Container(
          color: AppColors.primaryPink,
          alignment: Alignment.topCenter,
          child: OverallPadding(
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  buildHeader(context, constraints),
                  SizedBox(height: screenHeight / 20),
                  buildMainText(context, constraints),
                  SizedBox(height: screenHeight / 30),
                  constraints.maxWidth >= 501
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildAppStoreIcon(context, constraints),
                            buildGooglePlayIcon(context, constraints),
                          ],
                        )
                      : Column(
                          children: [
                            buildAppStoreIcon(context, constraints),
                            SizedBox(height: screenHeight / 30),
                            buildGooglePlayIcon(context, constraints),
                          ],
                        ),
                  SizedBox(height: screenHeight / 30),
                  Image(
                    image: AssetImage("images/iphoneClient.png"),
                    height: 0.8 * screenHeight,
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget buildHeader(BuildContext context, BoxConstraints constraints) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Image.asset(
            "images/logo-horizontal-white.png",
            width: screenWidth /
                (constraints.maxWidth > 760
                    ? 6
                    : constraints.maxWidth >= 501
                        ? 4
                        : 3.2),
          ),
        ),
        AppButton(
          textData: "Trabalhe Conosco",
          height: constraints.maxWidth > 760 ? 50 : 40,
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: constraints.maxWidth > 760 ? 22 : 18,
            fontWeight: FontWeight.w600,
          ),
          hasShadow: false,
          border: Border.all(color: Colors.white, width: 2),
          onTapCallBack: () => Navigator.pushNamedAndRemoveUntil(
            context,
            Partners.routeName,
            (_) => false,
          ),
        )
      ],
    );
  }

  Widget buildMainText(BuildContext context, BoxConstraints constraints) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        text: "O jeito mais",
        style: TextStyle(
          fontSize: constraints.maxWidth >= 760
              ? 50
              : constraints.maxWidth >= 501
                  ? 40
                  : 30,
          color: Colors.white,
          fontFamily: "OpenSans",
          fontWeight: FontWeight.w300,
        ),
        children: <TextSpan>[
          TextSpan(
            text: " barato",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: " e ",
          ),
          TextSpan(
            text: " moderno",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: " de chamar uma moto em Paracatu",
          ),
        ],
      ),
    );
  }

  Widget buildGooglePlayIcon(BuildContext context, BoxConstraints constraints) {
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        html.window.open(
            "https://play.google.com/store/apps/details?id=com.venni.client",
            "new tab");
      },
      child: Image.asset(
        "images/googleplay-white.jpg",
        width: screenWidth /
            (constraints.maxWidth >= 760
                ? 5
                : constraints.maxWidth >= 501
                    ? 4
                    : 1.3),
      ),
    );
  }

  Widget buildAppStoreIcon(BuildContext context, BoxConstraints constraints) {
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        html.window.open(
            "https://apps.apple.com/br/app/venni/id1577371169", "new tab");
      },
      child: Image.asset(
        "images/appstore-white.jpg",
        width: screenWidth /
            (constraints.maxWidth >= 760
                ? 5
                : constraints.maxWidth >= 501
                    ? 4
                    : 1.3),
      ),
    );
  }
}
