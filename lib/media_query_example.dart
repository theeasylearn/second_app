import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;
    double ScreenHeight = ScreenSize.height;
    double ScreenWidth = ScreenSize.width;
    return  Material(
      color: Colors.white38,
      child: Column(
        children: [
          Container(
            height: ScreenHeight/3,
            width: ScreenWidth,
            color: Colors.orange,
          ),
          Container(
            height: ScreenHeight/3,
            width: ScreenWidth,
            color: Colors.red,
          ),
          Container(
            height: ScreenHeight/3,
            width: ScreenWidth,
            color: Colors.cyan,
          )
        ],
      ),
    );
  }
}
