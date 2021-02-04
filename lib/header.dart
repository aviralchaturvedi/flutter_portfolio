import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/cooler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameWidget = "Aviral\nChaturvedi"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 9 : 20)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
          child: VStack([
        ZStack([
          PictureWidget(),
          Row(
            children: [
              VStack([
                CustomAppBar()
                    .shimmer(primaryColor: coolers.accentColor),
                30.heightBox,
                nameWidget,
                20.heightBox,
                VxBox()
                    .color(coolers.accentColor)
                    .size(60, 10)
                    .make()
                    .shimmer(primaryColor: coolers.accentColor),
                30.heightBox,
                SocialAccounts()
              ]).pSymmetric(h: context.percentWidth * 10, v: 32),
              Expanded(
                  child: VxResponsive(
                fallback: Offstage(),
                small: Intdroductionwidget(),
                medium: Intdroductionwidget(),
                large: Intdroductionwidget()
                    .pOnly(left: 120)
                    .h(context.percentHeight * 60),
                xlarge: Intdroductionwidget(),
              ))
            ],
          ).w(context.screenWidth),
        ])
      ])).color(coolers.secondaryColor).make(),
    );
  }
}

class Intdroductionwidget extends StatelessWidget {
  const Intdroductionwidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack([
      20.heightBox,
      "I am a student who is very much enthusiastic about programming and is interested in exploring new languages and developing my skills"
          .text
          .gray500
          .widest
          .sm
          .make(),
      10.heightBox,
      "flutter developer".text.white.xl3.make().w(context.isMobile
          ? context.screenWidth
          : context.percentWidth * 40),
      20.heightBox
    ]);
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: missing_required_param
    return Transform(
        transform: Matrix4.rotationY(pi),
        alignment: Alignment.center,
        child: Image.asset("assets/aviral.jpeg",
            fit: BoxFit.cover, height: context.percentHeight * 60));
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: coolers.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HStack([
        20.widthBox,
        Icon(
          AntDesign.twitter,
          color: Colors.white,
        ).mdClick(() {
          launch("https://twitter.com/Aviral15144100");
        }).make(),
        20.widthBox,
        Icon(
          AntDesign.instagram,
          color: Colors.white,
        ).mdClick(() {
          launch("https://www.instagram.com/aviral.084/");
        }).make(),
        20.widthBox,
        Icon(
          AntDesign.linkedin_square,
          color: Colors.white,
        ).mdClick(() {
          launch("https://www.linkedin.com/in/aviral-chaturvedi/");
        }).make()
      ]),
    );
  }
}
