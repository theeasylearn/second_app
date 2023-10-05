import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Team {
  final String name;
  final String captain;
  final String flagUrl;

  Team({required this.name, required this.captain, required this.flagUrl});
}

class MediaQueryExample extends StatelessWidget {
  List<Team> getTeams() {
    return [
      Team(
        name: 'India',
        captain: 'Rohit Sharma',
        flagUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png',
      ),
      Team(
        name: 'England',
        captain: 'Jos Buttler',
        flagUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Flag_of_the_United_Kingdom.svg/1200px-Flag_of_the_United_Kingdom.svg.png',
      ),
      Team(
        name: 'Australia',
        captain: 'Aaron Finch',
        flagUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Flag_of_Australia.svg/1200px-Flag_of_Australia.svg.png',
      ),
      Team(
        name: 'New Zealand',
        captain: 'Kane Williamson',
        flagUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Flag_of_New_Zealand.svg/1200px-Flag_of_New_Zealand.svg.png',
      ),
      Team(
        name: 'Pakistan',
        captain: 'Babar Azam',
        flagUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Flag_of_Pakistan.svg/1200px-Flag_of_Pakistan.svg.png',
      ),
      Team(
        name: 'South Africa',
        captain: 'Temba Bavuma',
        flagUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Flag_of_South_Africa.svg/1200px-Flag_of_South_Africa.svg.png',
      ),
      Team(
        name: 'Bangladesh',
        captain: 'Tamim Iqbal',
        flagUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/1200px-Flag_of_Bangladesh.svg.png',
      ),
      Team(
        name: 'Sri Lanka',
        captain: 'Dasun Shanaka',
        flagUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Flag_of_Sri_Lanka.svg/1200px-Flag_of_Sri_Lanka.svg.png',
      ),
      Team(
        name: 'Afghanistan',
        captain: 'Hashmatullah Shahidi',
        flagUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Flag_of_the_Islamic_Emirate_of_Afghanistan_(2021%E2%80%93present).svg/1200px-Flag_of_the_Islamic_Emirate_of_Afghanistan_(2021%E2%80%93present).svg.png',
      ),
      Team(
        name: 'Netherlands',
        captain: 'Scott Edwards',
        flagUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2w/Flag_of_the_Netherlands.svg/1200px-Flag_of_the_Netherlands.svg.png',
      ),
    ];
  }
  Widget DisplayTeam(Team team)
  {
    return  Card(
      child: ListTile(
        title: Text(team.name,textScaleFactor: 1.5,),
        subtitle: Text(team.captain),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_India.png/1200px-Flag_of_India.png"
          ),
        ),
      ),
    );
  }
  Widget DisplayTeam2(Team team)
  {
    return  Card(
      child: Column(
        children: [
          Text(team.name,textScaleFactor: 1.5,),
          Text(team.captain),
          Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_India.png/1200px-Flag_of_India.png",
               height: 200,
               width: 200,
          )
        ],
      ),
    );
  }
  var teams;
  MediaQueryExample()
  {
    teams = getTeams();
  }
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
            height: ScreenHeight / 2,
            width: ScreenWidth,
            color: Colors.orange,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10),
              itemCount: teams.length,
              itemBuilder: (BuildContext context, int index) =>
                  DisplayTeam2(teams[index]),
            ),
          ),
          Container(
            height: ScreenHeight / 2,
            width: ScreenWidth,
            color: Colors.red,
            child: Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: teams.length,
                itemBuilder: (BuildContext context, int index) =>
                    DisplayTeam(teams[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
