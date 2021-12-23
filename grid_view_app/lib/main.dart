import 'package:flutter/material.dart';
import 'package:grid_view_app/components/data/playes.dart';

import 'components/my_player_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Map<String, String>> playersData = PlayersData().data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff661EFF),
          title: Text('Material App Bar'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: playersData.length,
              itemBuilder: (BuildContext context, int i) => MyPlayerCard(
                name: playersData[i]["name"]!,
                chobi: Image.asset(
                    "assets/images/players/${playersData[i]["photo"]}"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
