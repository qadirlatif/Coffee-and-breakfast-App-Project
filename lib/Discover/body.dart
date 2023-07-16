import 'package:coffee_breakfast_app/preloader/preloader.dart';

import 'First-Screen_Text.dart';
import 'first-screen_navigator-chip.dart';
import 'package:flutter/material.dart';
import 'First_Screen_Search.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1,
      child: Stack(
        children: [
          ClipRRect(
            child: 
            Preloader(imageurl: 'https://images.unsplash.com/photo-1512568400610-62da28bc8a13?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGNvZmZlZSUyMGN1cHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80', height: 1, width: 1)
          ),
          Container(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.3)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "DISCOVER",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              SizedBox(
                  child: Column(
                children: [
                  Padding(
                      padding:
                          EdgeInsets.fromLTRB(width * 0.05, 0, width * 0.05, 0),
                      child:  Searchfield(text: "What Would you like to try today?",)),
                  const IntroText()
                ],
              )),
              const NavigatorChip()
            ],
          )
        ],
      ),
    );
  }
}
