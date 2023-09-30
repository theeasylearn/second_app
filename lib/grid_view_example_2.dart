import 'package:flutter/material.dart';
class Country {
  String name;
  String flagUrl;
  double gdp;
  Country(this.name, this.flagUrl, this.gdp);
}

class GridViewExample2 extends StatefulWidget {
  @override
  State<GridViewExample2> createState() => _GridViewExample2State();
}



class _GridViewExample2State extends State<GridViewExample2> {

  List<Country> countries = [
    Country("United States", "https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1920px-Flag_of_the_United_States.svg.png", 25.345),
    Country("Japan", "https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/1920px-Flag_of_Japan.svg.png", 5.033),
    Country("Germany", "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/1920px-Flag_of_Germany.svg.png", 4.223),
    Country("United Kingdom", "https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/1920px-Flag_of_the_United_Kingdom.svg.png", 2.729),
    Country("France", "https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/1920px-Flag_of_France.svg.png", 2.932),
    Country("Italy", "https://upload.wikimedia.org/wikipedia/en/thumb/0/03/Flag_of_Italy.svg/1920px-Flag_of_Italy.svg.png", 2.093),
    Country("Canada", "https://upload.wikimedia.org/wikipedia/en/thumb/c/cf/Flag_of_Canada.svg/1920px-Flag_of_Canada.svg.png", 1.901),
  ];
  Widget DisplayCountry(int index) {
      return Card(
        elevation: 8,
        child: Column(
          children: [
            Text(countries[index].name,textDirection: TextDirection.ltr,textScaleFactor: 1.5,),
            AspectRatio(
              aspectRatio: 1.5,
              child: Image.network(countries[index].flagUrl),
            ),
            Text(countries[index].gdp.toString(),textDirection: TextDirection.ltr,),
          ],
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Another Gridview example"),
        ),
        body: Material(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  itemCount: countries.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  crossAxisCount: 2, childAspectRatio: 1.10
              ), itemBuilder: (context,index) => DisplayCountry(index)),
            ),
        ),
      ),
    );
  }
}
