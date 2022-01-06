import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  TextEditingController searchTextController = TextEditingController();

  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('University Finder'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/svgs/logo.svg",
              width: 200.0,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: searchTextController,
                decoration: InputDecoration(
                  hintText: "Enter Country name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(searchTextController.text);
              },
              child: Text("Search"),
            )
          ],
        ),
      ),
    );
  }
}
