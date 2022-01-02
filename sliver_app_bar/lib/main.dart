import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: Icon(Icons.menu),
                title: Text("Boo App Bar foo"),
                flexibleSpace: FlutterLogo(
                  size: 200,
                ),
                expandedHeight: 200,
                collapsedHeight: 100,
                floating: true,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int i) => SizedBox(
                    width: double.infinity,
                    height: 100.0,
                    child: Card(
                      color: Colors.redAccent,
                      // child: Text("Child No $i"),
                    ),
                  ),
                  childCount: 10,
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int i) =>
                      Card(color: Colors.redAccent),
                  childCount: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
