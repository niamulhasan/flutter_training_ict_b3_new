import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SearchPage extends StatelessWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  Future getUniversities() async {
    http.Response response = await http.get(
        Uri.parse("http://universities.hipolabs.com/search?country=india"));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Error loading data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boo"),
      ),
      body: FutureBuilder(
          future: getUniversities(),
          builder: (BuildContext context, AsyncSnapshot sn) {
            List unis = sn.data;
            if (sn.hasData) {
              return ListView.builder(
                itemCount: unis.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text("${unis[index]["name"]}"),
                    subtitle: Text("${unis[index]["country"]}"),
                  ),
                ),
              );
            }
            if (sn.hasError) {
              return Text("Error Loading Data");
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
