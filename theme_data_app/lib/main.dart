import 'package:flutter/material.dart';
import 'package:theme_data_app/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.redAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: ListView(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("I ama button"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("I ama button"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("I ama button"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
