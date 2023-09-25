import 'package:flutter/material.dart';

class TableDemo extends StatefulWidget {
  const TableDemo({super.key});

  @override
  State<TableDemo> createState() => _TableDemoState();
}

class _TableDemoState extends State<TableDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("table demo",textDirection: TextDirection.ltr,),
        ),
        body: Material(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Table(
                border: TableBorder.all(),
                columnWidths: {
                  0: FractionColumnWidth(0.1),
                  1: FractionColumnWidth(0.7),
                  2: FractionColumnWidth(0.2),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey),
                    children: [
                      Text("No",textDirection: TextDirection.ltr,),
                      Text("Team Name",textDirection: TextDirection.ltr,),
                      Text("points",textDirection: TextDirection.ltr,),
                    ]
                  ),
                  TableRow(
                    children: [
                      Text("1",textDirection: TextDirection.ltr,),
                      Text("India",textDirection: TextDirection.ltr,),
                      Text("150",textDirection: TextDirection.ltr,),
                    ]
                  ),
                  TableRow(
                    children: [
                      Text("2",textDirection: TextDirection.ltr,),
                      Text("Pakistan",textDirection: TextDirection.ltr,),
                      Text("135",textDirection: TextDirection.ltr,),
                    ]
                  ),
                  TableRow(
                    children: [
                      Text("3",textDirection: TextDirection.ltr,),
                      Text("Australia",textDirection: TextDirection.ltr,),
                      Text("125",textDirection: TextDirection.ltr,),
                    ]
                  ),
                  TableRow(
                    children: [
                      Text("4",textDirection: TextDirection.ltr,),
                      Text("England",textDirection: TextDirection.ltr,),
                      Text("120",textDirection: TextDirection.ltr,),
                    ]
                  ),
                  TableRow(
                    children: [
                      Text("5",textDirection: TextDirection.ltr,),
                      Text("South affrica",textDirection: TextDirection.ltr,),
                      Text("110",textDirection: TextDirection.ltr,),
                    ]
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
