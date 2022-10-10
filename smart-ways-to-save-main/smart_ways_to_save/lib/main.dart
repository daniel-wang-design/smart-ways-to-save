import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Test());
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          backgroundColor: Colors.white,
          fontFamily: GoogleFonts.montserrat().fontFamily),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: Home(),
    );
  }
}
