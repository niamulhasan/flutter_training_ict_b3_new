import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                  print("Current value: $count");
                },
                child: Icon(
                  Icons.add,
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  count--;
                });
                print("Current value: $count");
              },
              child: Icon(
                Icons.remove,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$count",
                style: TextStyle(
                  fontSize: 44.0,
                ),
              ),
              Text("You have pressed the button this many times"),
            ],
          ),
        ),
      ),
    );
  }
}
