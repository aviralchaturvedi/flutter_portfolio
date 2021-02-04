import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'cooler.dart';
import 'header.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: VStack([
      VxDevice(
        mobile: VStack([
          "got a project?\nlet's talk".text.center.white.xl2.make(),
          10.heightBox,
          "aviralchaturvedi1@gmail.com"
              .text
              .color(coolers.accentColor)
              .semiBold
              .make()
              .box
              .border(color: coolers.accentColor)
              .p16
              .rounded
              .makeCentered()
        ], crossAlignment: CrossAxisAlignment.center),
        web: HStack([
          "got a project?\nlet's talk".text.center.white.xl2.make(),
          10.widthBox,
          "aviralchaturvedi1@gmail.com   "
              .text
              .color(coolers.accentColor)
              .semiBold
              .makeCentered()
              .box
              .size(300, 90)
              .border(color: coolers.accentColor)
              .p16
              .rounded
              .makeCentered()
        ], alignment: MainAxisAlignment.spaceAround)
            .centered()
            .p16(),
      ),
      50.heightBox,
      CustomAppBar().centered(),
      10.heightBox,
      "thanks for scrolling\n"
          .richText
          .semiBold
          .white
          .withTextSpanChildren([
        "that's all folks".textSpan.gray100.make()
      ]).makeCentered(),
      10.heightBox,
    ]));
  }
}
