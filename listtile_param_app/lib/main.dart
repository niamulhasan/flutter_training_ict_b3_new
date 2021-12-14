import 'package:flutter/material.dart';

import 'components/contact_tile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            children: [
              MyContactTile(
                color: Colors.redAccent,
                name: "Akkas Ali",
                email: "akkas@akkmail.com",
                chinnho: Icon(Icons.call),
              ),
              GestureDetector(
                onTap: () {
                  print("2nd card tapped!");
                },
                child: MyContactTile(
                  chinnho: Icon(Icons.call_end),
                  color: Colors.green,
                  name: "Jhakkas Ali",
                  email: "ali@jhakkas.com",
                ),
              ),
              InkWell(
                onTap: () {
                  print("Ink well tapped!");
                },
                child: MyContactTile(
                  color: Colors.transparent,
                  name: "Normal Ali",
                  email: "normal@normi.com",
                  chinnho: Icon(Icons.call_made),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
