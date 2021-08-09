import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:venni/routes/homePage.dart';
import 'package:venni/styles.dart';
import 'package:venni/widgets/overallPadding.dart';
import 'dart:html' as html;

class Partners extends StatelessWidget {
  static String routeName = "/parceiros";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // desktop
      if (constraints.maxWidth >= 760) {
        return Scaffold(
          body: Container(
            color: Colors.white,
            alignment: Alignment.topCenter,
            child: OverallPadding(
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
                            image: AssetImage("images/iphonePartner.png"),
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
          color: Colors.white,
          alignment: Alignment.topCenter,
          child: OverallPadding(
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
                    image: AssetImage("images/iphonePartner.png"),
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
          onTap: () => Navigator.pushNamedAndRemoveUntil(
            context,
            HomePage.routeName,
            (_) => false,
          ),
          child: Image.asset(
            "images/logo-horizontal-pink.png",
            width: screenWidth /
                (constraints.maxWidth > 760
                    ? 6
                    : constraints.maxWidth >= 501
                        ? 4
                        : 3.2),
          ),
        ),
      ],
    );
  }

  Widget buildMainText(BuildContext context, BoxConstraints constraints) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        text: "Baixe o app de parceiros, se cadastre, e ganhe ",
        style: TextStyle(
          fontSize: constraints.maxWidth >= 760
              ? 50
              : constraints.maxWidth >= 501
                  ? 40
                  : 30,
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
          TextSpan(
            text: " com ",
          ),
          TextSpan(
            text: " tranquilidade",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
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
            "https://play.google.com/store/apps/details?id=com.venni.partner",
            "new tab");
      },
      child: Image.asset(
        "images/googleplay-pink.jpg",
        width: screenWidth /
            (constraints.maxWidth >= 760
                ? 5
                : constraints.maxWidth >= 501
                    ? 4
                    : 2),
      ),
    );
  }

  Widget buildAppStoreIcon(BuildContext context, BoxConstraints constraints) {
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        html.window.open(
            "https://apps.apple.com/br/app/venni-parceiros/id1579546958",
            "new tab");
      },
      child: Image.asset(
        "images/appstore-pink.jpg",
        width: screenWidth /
            (constraints.maxWidth >= 760
                ? 5
                : constraints.maxWidth >= 501
                    ? 4
                    : 2),
      ),
    );
  }
}
