import 'package:flutter/material.dart';
class Country {
  String name;
  String capital;

  Country(this.name, this.capital);
}
class SliverExample extends StatelessWidget {
  List<Country> Countries = [
  Country("Albania", "Tirana"),
  Country("Andorra", "Andorra la Vella"),
  Country("Austria", "Vienna"),
  Country("Belarus", "Minsk"),
  Country("Belgium", "Brussels"),
  Country("Bosnia and Herzegovina", "Sarajevo"),
  Country("Bulgaria", "Sofia"),
  Country("Croatia", "Zagreb"),
  Country("Cyprus", "Nicosia"),
  Country("Czech Republic", "Prague"),
  Country("Denmark", "Copenhagen"),
  Country("Estonia", "Tallinn"),
  Country("Finland", "Helsinki"),
  Country("France", "Paris"),
  Country("Germany", "Berlin"),
  Country("Greece", "Athens"),
  Country("Hungary", "Budapest"),
  Country("Iceland", "Reykjavik"),
  Country("Ireland", "Dublin"),
  Country("Italy", "Rome"),
  Country("Latvia", "Riga"),
  Country("Liechtenstein", "Vaduz"),
  Country("Lithuania", "Vilnius"),
  Country("Luxembourg", "Luxembourg City"),
  Country("Malta", "Valletta"),
  Country("Moldova", "Chisinau"),
  Country("Monaco", "Monaco"),
  Country("Montenegro", "Podgorica"),
  Country("Netherlands", "Amsterdam"),
  Country("North Macedonia", "Skopje"),
  Country("Norway", "Oslo"),
  Country("Poland", "Warsaw"),
  Country("Portugal", "Lisbon"),
  Country("Romania", "Bucharest"),
  Country("Russia", "Moscow"),
  Country("San Marino", "San Marino"),
  Country("Serbia", "Belgrade"),
  Country("Slovakia", "Bratislava"),
  Country("Slovenia", "Ljubljana"),
  Country("Spain", "Madrid"),
  Country("Sweden", "Stockholm"),
  Country("Switzerland", "Bern"),
  Country("Ukraine", "Kyiv"),
  Country("United Kingdom", "London"),
  Country("Vatican City", "Vatican City"),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true, pinned: true,
            title: Text("Sliver example"),
            actions: [
              IconButton(icon: Icon(Icons.home), onPressed: ()  {
                print("Map button pressed");
              },),
              IconButton(icon: Icon(Icons.map), onPressed: () {
                print("Map button pressed");
              },),
              IconButton(icon: Icon(Icons.share), onPressed: () {
                print("Map button pressed");
              },),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index)  {
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Europe_orthographic_Caucasus_Urals_boundary_%28with_borders%29.svg/220px-Europe_orthographic_Caucasus_Urals_boundary_%28with_borders%29.svg.png")
                      ),
                      title: Text(Countries[index].name,textScaleFactor: 1.5,),
                      subtitle: Text(Countries[index].capital),
                    ),
                  ),
                );
          },childCount: Countries.length),),
          SliverGrid(delegate: SliverChildBuilderDelegate((context,index)
          {
              return Card(
                    child: Padding(
                      padding: EdgeInsets.only(top:20,bottom:10,left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Europe_orthographic_Caucasus_Urals_boundary_%28with_borders%29.svg/220px-Europe_orthographic_Caucasus_Urals_boundary_%28with_borders%29.svg.png"),),
                          Padding(
                            padding: EdgeInsets.only(left:20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(Countries[index].name,textScaleFactor: 1.5,textDirection: TextDirection.ltr,),
                                Text(Countries[index].capital,textDirection: TextDirection.ltr,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
              );
          },childCount: Countries.length),

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
              childAspectRatio: 4
          ),)
        ],
      ),
    );
  }
}
