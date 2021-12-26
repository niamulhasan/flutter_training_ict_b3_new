import 'package:flutter/material.dart';
import 'package:grid_view_app/components/data/playes.dart';
import 'package:grid_view_app/components/my_player_card.dart';
import 'package:grid_view_app/pages/datails.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> playersData = PlayersData().data;

  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            itemBuilder: (BuildContext context, int i) => InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsPage(name: playersData[i]["name"]!),
                  ),
                );
              },
              child: MyPlayerCard(
                name: playersData[i]["name"]!,
                chobi: Image.asset(
                  "assets/images/players/${playersData[i]["photo"]}",
                ),
                age: playersData[i]["age"]!,
                role: playersData[i]["role"]!,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
