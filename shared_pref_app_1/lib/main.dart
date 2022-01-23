import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //
  String? theNote = "No data found";
  TextEditingController noteTextController = TextEditingController();

  Future<void> saveNote(String value) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    bool isSaved = await handle.setString("my_note", value);
    if (isSaved) {
      print("Note is saved");
      setState(() {
        theNote = value;
      });
    } else {
      print("Error saving note");
    }
  }

  Future<void> getNote() async {
    SharedPreferences handel = await SharedPreferences.getInstance();
    String? note = handel.getString("my_note");
    print(note);
    setState(() {
      theNote = note;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNote();
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
          child: Container(
            child: Column(
              children: [
                TextField(
                  controller: noteTextController,
                ),
                ElevatedButton(
                  onPressed: () => saveNote(noteTextController.text),
                  child: Text("Save Note"),
                ),
                Text(
                  theNote!,
                  style: TextStyle(fontSize: 34.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
