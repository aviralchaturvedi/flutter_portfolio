import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
          direction:
              context.isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            "All Creative works,\n"
                .richText
                .withTextSpanChildren(
                    ["Selected projects.".textSpan.yellow400.make()])
                .xl4
                .white
                .make(),
            20.widthBox,
            Expanded(
                child: VxSwiper(
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              items: [
                ProjectWidget(title: "Color Game").mdClick(() {
                  launch(
                      "https://github.com/aviralchaturvedi/color-game-project");
                }).make(),
                ProjectWidget(title: "Instagram UI").mdClick(() {
                  launch(
                      "https://github.com/aviralchaturvedi/instagram_ui");
                }).make(),
                ProjectWidget(title: "Dice app").mdClick(() {
                  launch(
                      "https://github.com/aviralchaturvedi/dice_velocity");
                }).make(),
                ProjectWidget(title: "Movie search app").mdClick(() {
                  launch(
                      "https://github.com/aviralchaturvedi/movie_search");
                }).make(),
                ProjectWidget(title: "To-Do").mdClick(() {
                  launch(
                      "https://github.com/aviralchaturvedi/aviralchaturvedi.github.io");
                }).make(),
                ProjectWidget(title: "Magic 8").mdClick(() {
                  launch(
                      "https://github.com/aviralchaturvedi/magic_8");
                }).make(),
              ],
              height: 170,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
              autoPlayCurve: Curves.decelerate,
            ))
          ]).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  String title;

  ProjectWidget({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(200)
        .neumorphic(
            color: Vx.purple700, elevation: 5, curve: VxCurve.flat)
        .make()
        .p16();
  }
}
