import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/cooler.dart';
import 'package:portfolio/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'portfolio',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: coolers.accentColor,
          visualDensity: VisualDensity
              .adaptivePlatformDensity,
          textTheme:
              GoogleFonts.poppinsTextTheme()),
      home: HomeScreen(),
    );
  }
}
