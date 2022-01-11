import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SearchPage extends StatelessWidget {
  final String country;
  const SearchPage({
    Key? key,
    required this.country,
  }) : super(key: key);

  Future getUniversities(String c) async {
    http.Response response = await http
        .get(Uri.parse("http://universities.hipolabs.com/search?country=$c"));
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
          future: getUniversities(country),
          builder: (BuildContext context, AsyncSnapshot sn) {
            if (sn.hasData) {
              List unis = sn.data;
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
              return Center(child: Text("Error Loading Data"));
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
