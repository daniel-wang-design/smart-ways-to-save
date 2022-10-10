import 'package:flutter/material.dart';
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

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  int pair = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Container(
        color: Colors.lightBlue.shade50,
        child: chooseLevel(),
      ),
    );
  }

  Row chooseLevel() {
    Row row = Row();
    switch (pair) {
      case 1:
        row = pair1();
        break;
      case 2:
        row = pair2();
        break;
      case 3:
        row = pair3();
        break;
      default:
    }
    return row;
  }

  Row pair1() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            //wrong answer
            onTap: () {
              setState(() {
                pair = 2;
              });
            },
            child: Image.asset("lib/assets/handwash.png"),
          ),
        ),
        Expanded(
          child: GestureDetector(
            // right answer
            onTap: () {
              setState(() {
                pair = 2;
              });
            },
            child: Image.asset("lib/assets/dishwasher.png"),
          ),
        ),
      ],
    );
  }

  Row pair2() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            //wrong answer
            onTap: () {
              setState(() {
                pair = 3;
              });
            },
            child: Image.asset("lib/assets/bath.png"),
          ),
        ),
        Expanded(
          child: GestureDetector(
            // right answer
            onTap: () {
              setState(() {
                pair = 3;
              });
            },
            child: Image.asset("lib/assets/shower.png"),
          ),
        ),
      ],
    );
  }

  Row pair3() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            //wrong answer
            onTap: () {
              setState(() {
                pair = 4;
              });
            },
            child: Image.asset("lib/assets/newspaper.png"),
          ),
        ),
        Expanded(
          child: GestureDetector(
            // right answer
            onTap: () {
              setState(() {
                pair = 4;
              });
            },
            child: Image.asset("lib/assets/tablet.png"),
          ),
        ),
      ],
    );
  }

  Row pair4() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            //wrong answer
            onTap: () {
              setState(() {
              });
            },
            child: Image.asset("lib/assets/plastic_straw.png"),
          ),
        ),
        Expanded(
          child: GestureDetector(
            // right answer
            onTap: () {
              setState(() {
                pair = 5;
              });
            },
            child: Image.asset("lib/assets/reusable_straw.png"),
          ),
        ),
      ],
    );
  }
}
