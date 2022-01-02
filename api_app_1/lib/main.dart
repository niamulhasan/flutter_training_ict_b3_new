import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String data = "No data";

  Future<void> getBooks() async {
    var my_response =
        await http.get(Uri.parse("http://alquranbd.com/api/hadith"));
    setState(() {
      data = my_response.body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: getBooks,
                  child: Text("Load Books Data"),
                ),
                Text("$data"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
