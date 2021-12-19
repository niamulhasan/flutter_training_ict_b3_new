import 'package:flutter/material.dart';

import 'components/my_player_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: (400 / 505),
              children: [
                MyPlayerCard(
                  name: "Sakib Al Hasan",
                  chobi: Image.asset("assets/images/player.png"),
                ),
                MyPlayerCard(
                    name: "Mashrafi Bin Murtaza",
                    chobi: Image.asset("assets/images/players/sakib.png")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
