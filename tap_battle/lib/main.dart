import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int top = 50;
  int bottom = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: top >= 95 || bottom >= 95
              ? FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      top = 50;
                      bottom = 50;
                    });
                  },
                  child: Icon(Icons.refresh),
                )
              : Text(""),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      flex: top,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            top++;
                            bottom--;
                          });
                        },
                        onDoubleTap: () {
                          setState(() {
                            top++;
                            bottom--;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: bottom,
                      child: GestureDetector(
                        onTap: () {
                          bottom++;
                          top--;
                        },
                        onDoubleTap: () {
                          bottom++;
                          top--;
                        },
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                top >= 95 || bottom >= 95
                    ? Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.amber.withOpacity(0.7),
                        child: Center(
                          child: Text(
                            top >= 95 ? "Red Won!" : "Green Won!",
                            style: TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    : Text(""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
