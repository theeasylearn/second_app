import 'package:flutter/material.dart';
class ApplifeCycleExample extends StatefulWidget {

  @override
  State createState() => ApplifeCycleExampleState();
}

class ApplifeCycleExampleState extends State<ApplifeCycleExample> {
  int count = 0;

  //constructor
  @override
  ApplifeCycleExampleState()
  {
      print("ApplifeCycleExampleState class constructor is called.....");
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initstate method is called.....");
  }
  Widget build(BuildContext context) {
    print("build method is called.....");
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Applife Cycle example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Count = $count",style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
              ),),
              ElevatedButton(child: Text("Increase Counter by 1"),onPressed: (){
                  this.setState(() {
                    count++;
                    print(count);
                  });

              },)
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose method is called.......");
  }
}
