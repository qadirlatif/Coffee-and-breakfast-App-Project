import 'package:flutter/material.dart';
import '../model_class/model_class.dart';
import '../menu/menu_displayer_items.dart';

// ignore: must_be_immutable
class Favorites extends StatefulWidget {
  Favorites({super.key, required this.favorites});
  Coffeeandbreakfast favorites;
  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 1,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(223, 220, 220, 1),
      ),
      child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: const Icon(
                              Icons.arrow_back,
                              size: 30,
                            ),
                            onTap: () => setState(() {
                              Navigator.pop(context);
                            }),
                          ),
                          const Text(
                            "FAVORITE",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const Text("      ")
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 12)),
                    Wrap(
                      children: [
                        for (int i = 0;
                            i < widget.favorites.favorites.length;
                            i++)
                          MenuItems(
                            menu: widget.favorites.favorites[i],
                            coffeeobj: widget.favorites,
                          )
                      ],
                    )
                  ],
                ),
              ))),
    ));
  }
}
