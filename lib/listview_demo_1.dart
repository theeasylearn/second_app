import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    ListViewExampleState example = new ListViewExampleState();
    return example;
  }
}
class ListViewExampleState extends State<ListViewExample>
{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text("ListView Example 1"),
         ),
         body: Material(
           child: ListView(
             padding: EdgeInsets.all(10),
             children: [
               Card(
                 child: ListTile(
                   title: Text("India",textScaleFactor: 1.5,),
                   subtitle: Text("Rohit Sharma"),
                   leading: CircleAvatar(
                     backgroundImage: NetworkImage(
                       "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_India.png/1200px-Flag_of_India.png"
                     ),
                   ),
                 ),
               ),
               Card(
                 child: ListTile(
                   title: Text("England",textScaleFactor: 1.5,),
                   subtitle: Text("Jos Buttler"),
                   leading: CircleAvatar(
                     backgroundImage: NetworkImage(
                         "https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/1200px-Flag_of_the_United_Kingdom.svg.png?20190917170937"
                     ),
                   ),
                 ),
               )
             ],
           ),
         ),
       ),
     );
  }

}