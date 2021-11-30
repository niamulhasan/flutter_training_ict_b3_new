import 'package:flutter/material.dart';

void main() {
  runApp(MyListViewApp());
}

class MyListViewApp extends StatelessWidget {
  const MyListViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View App"),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 200000,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 160.0,
                  color: Colors.redAccent,
                  child: Text(
                    "$i",
                    style: TextStyle(fontSize: 44.0),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
