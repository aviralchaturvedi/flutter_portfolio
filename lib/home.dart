import 'package:flutter/material.dart';
import 'package:portfolio/cooler.dart';
import 'package:portfolio/middle.dart';
import 'package:velocity_x/velocity_x.dart';

import 'footer.dart';
import 'header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: coolers.primaryColor,
      child: VStack([
        HeaderScreen(),
        if (context.isMobile) Intdroductionwidget(),
        MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
