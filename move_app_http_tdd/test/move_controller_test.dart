import 'dart:math';

import 'package:move_app_http_tdd/movie_controller.dart';
import 'package:test/test.dart';

void main() {
  test("i am testing the movie function", () async {
    //IPO
    //Arrange

    //Act
    var x = Movies().getMovies();

    //Assert
    expect(x, isA<List>());
  });
}
