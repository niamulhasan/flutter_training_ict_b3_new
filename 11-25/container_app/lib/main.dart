import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App Title"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.deepPurple.shade100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 300.0,
                height: 100.0,
                color: Colors.redAccent,
              ),
              Container(
                width: 280.0,
                height: 120.0,
                color: Colors.greenAccent,
              ),
              Container(
                height: 160,
                width: 220.0,
                color: Colors.amberAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
