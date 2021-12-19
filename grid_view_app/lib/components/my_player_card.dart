import 'package:flutter/material.dart';

class MyPlayerCard extends StatelessWidget {
  final String name;
  final Image chobi;

  const MyPlayerCard({
    Key? key,
    required this.name,
    required this.chobi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerEnd,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 22.0,
            left: 12.0,
            right: 12.0,
            bottom: 12.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: const Color(0xff661EFF).withOpacity(0.2),
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
              image: const DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/images/card_bg.png"),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 18.0,
                    ),
                    child: Column(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 16.0,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 4.0,
                                ),
                                child: Text(
                                  "Bangladesh",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                )
              ],
            ),
          ),
        ),
        chobi,
      ],
    );
  }
}
