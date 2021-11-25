import 'package:flutter/material.dart';

void main() {
  runApp(const MyContainerApp());
}

class MyContainerApp extends StatelessWidget {
  const MyContainerApp({Key? key}) : super(key: key);

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
          color: Colors.redAccent,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 180,
                color: Colors.teal,
              ),
              Container(
                width: double.infinity,
                height: 180,
                color: Colors.amber,
              ),
              Container(
                width: double.infinity,
                height: 180,
                color: Colors.deepPurple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
