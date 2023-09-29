import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {

  @override
  State<GridViewExample> createState() => GridViewExampleState();
}

class GridViewExampleState extends State<GridViewExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text( "Grid View Example"),
        ),
        body: Material(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4
            ),
            children: [
              Card(elevation: 8,child: Image.network("https://www.picsum.photos/200?random=1")),
              Card(elevation: 8,child: Image.network("https://www.picsum.photos/200?random=2")),
              Card(elevation: 8,child: Image.network("https://www.picsum.photos/200?random=3")),
              Card(elevation: 8,child: Image.network("https://www.picsum.photos/200?random=4")),
              Card(elevation: 8,child: Image.network("https://www.picsum.photos/200?random=5")),
              Card(elevation: 8,child: Image.network("https://www.picsum.photos/200?random=6")),
              Card(elevation: 8,child: Image.network("https://www.picsum.photos/200?random=7")),
              Card(elevation: 8,child: Image.network("https://www.picsum.photos/200?random=8")),
            ],
          ),
        ),
      ),
    );
  }
}
