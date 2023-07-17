import 'package:flutter/material.dart';

class TopStackText extends StatelessWidget {
  const TopStackText({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.1,
                  MediaQuery.of(context).size.height * 0.02,
                  0,
                  0),
              child: const Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "COFFEE",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      children: [
                        Text(
                          "It's Great ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                        Text(
                          "Day For",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Coffee",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                    ),
                  )
                ],
              ),
            )));
  }
}
