import 'package:flutter/cupertino.dart';
class MenuDemo extends StatefulWidget {
  const MenuDemo({super.key});
  @override
  State<MenuDemo> createState() => _MenuDemoState();
}

class _MenuDemoState extends State<MenuDemo> {
  String message = 'test';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) =>
            Scaffold(
              appBar: AppBar(
                title: Text("Another application"),
                actions: [
                  PopupMenuButton(
                      onSelected: (SelectedItem) => OnItemSelected(context,SelectedItem),
                      itemBuilder: (content) => [
                        PopupMenuItem(child: Text("Good Morning"),value: 1),
                        PopupMenuItem(child: Text("Good Evening"),value: 2),
                        PopupMenuItem(child: Text("Good Aftertoon"),value:3),
                        PopupMenuItem(child: Text("Good Night"),value:4),
                      ])
                ],
              ),
              body: SizedBox(
                height: 300,
                width : double.infinity,
                child: Card(
                  elevation: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 2,
                        child: Image.network(
                            "https://images.unsplash.com/photo-1521200379774-e541c236ea33?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
                            fit: BoxFit.cover),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text("the easylearn academy...",textDirection: TextDirection.ltr,),
                      )
                    ],
                  ),
                ),
              ),
            ),
      ),
    );
  }
  void OnItemSelected(BuildContext context, int SelectedItem) {
    if (SelectedItem == 1) message = "Good Morning";
    else if (SelectedItem == 2) message = "Good Evening";
    else if (SelectedItem == 3) message = "Good Afternoon";
    else if (SelectedItem == 4) message = "Good night";
    CherryToast.success(
      toastPosition:  Position.bottom,
      animationType:  AnimationType.fromBottom,
      title: Text(message,
          style: TextStyle(color: Colors.black)),
    ).show(context);
  }
}

