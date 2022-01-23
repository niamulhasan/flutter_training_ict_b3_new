import 'dart:convert';

import 'package:http/http.dart' as http;

class Movies {
  Future<List> getMovies() async {
    var res = await http.get(Uri.parse(
        "https://imdb-api.com/en/API/Search/k_7a5d7x6o/harrypotteruri"));
    if (res.statusCode == 200) {
      var boo = jsonDecode(res.body)["results"];
      print(boo.runtimeType.toString());
      return boo;
    } else {
      throw Exception("Booo failed");
    }
  }
}
