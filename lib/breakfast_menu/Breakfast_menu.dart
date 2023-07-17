import 'package:coffee_breakfast_app/breakfast_menu/breakfast_favoritescard.dart';
import 'package:coffee_breakfast_app/breakfast_menu/breakfastmenuCard.dart';
import 'package:flutter/material.dart';
import 'package:coffee_breakfast_app/model_class/model_class.dart';

// ignore: must_be_immutable
class BreakfastMenu extends StatefulWidget {
  BreakfastMenu({super.key, required this.coffeeobj});
  Coffeeandbreakfast coffeeobj;
  @override
  State<BreakfastMenu> createState() => _BreakfastMenuState();
}

class _BreakfastMenuState extends State<BreakfastMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                          onTap: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                        ),
                        const Text(
                          "BREAKFAST",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text("      ")
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0,
                            MediaQuery.of(context).size.height * 0.05, 0, 0)),
                    const Text(
                      "Favorite",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (int i = 0;
                                i < widget.coffeeobj.favorites.length;
                                i++)
                              Breakfastfavoritescard(
                                  coffeeobj: widget.coffeeobj.favorites[i])
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "Menu",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    for (int i = 0; i < widget.coffeeobj.breakfast.length; i++)
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: BreakfastMenuCard(
                            coffeeobj: widget.coffeeobj, index: i),
                      )
                  ],
                ),
              ))),
    );
  }
}
