import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key});

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget>
{
  Container MyContainer(String letter)
  {
      return Container(
        color: Colors.amber,
        height: 110,
        width: 85,
        child: Center(
          child: Text(letter,textScaleFactor: 3,textDirection: TextDirection.ltr,),
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wrap Widget Example"),
        ),
        body: Material(
          child: SizedBox(
            width: double.infinity,
            height: 600,
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.spaceEvenly,
              runAlignment: WrapAlignment.spaceBetween,
              children: [
                MyContainer('1'),
                MyContainer('2'),
                MyContainer('3'),
                MyContainer('4'),
                MyContainer('5'),
                MyContainer('6'),
                MyContainer('7'),
                MyContainer('8'),
                MyContainer('9'),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
