import 'package:flutter/material.dart';

class Trash1 extends StatefulWidget {
  @override
  _Trash1 createState() => _Trash1();
}

class _Trash1 extends State<Trash1> {
  bool _isEggDropped = false;
  bool _isBottleDropped = false;
  bool _isMaskDropped = false;
  String _egg = 'egg';
  String _bottle = 'bottle';
  String _mask = 'mask';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue.shade50,
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DragTarget<String>(
                builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return Container(
                    height: 300,
                    width: 137,
                    child: Image.asset("lib/assets/compost.png",),
                  );
                },
                onWillAccept: (data) {
                  return data == _egg;
                },
                onAccept: (data) {
                  setState(() {
                    _isEggDropped = true;
                  });
                },
              ),
              DragTarget<String>(
                builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return Container(
                    height: 300,
                    width: 137,
                    child: Image.asset("lib/assets/recycling.png",),
                  );
                },
                onWillAccept: (data) {
                  return data == _bottle;
                },
                onAccept: (data) {
                  setState(() {
                    _isBottleDropped = true;
                  });
                },
              ),
              DragTarget<String>(
                builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return Container(
                    height: 300,
                    width: 137,
                    child: Image.asset("lib/assets/garbage.png",),
                  );
                },
                onWillAccept: (data) {
                  return data == _mask;
                },
                onAccept: (data) {
                  setState(() {
                    _isMaskDropped = true;
                  });
                },
              ),
            ],
          ),
          // Expanded(
          //   child: 
          // )
        ),
      ),
    );
  }
}