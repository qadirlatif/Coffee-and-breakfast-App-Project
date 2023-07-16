import 'package:flutter/material.dart';
import '../model_class/model_class.dart';
import 'menu_displayer_items.dart';

// ignore: must_be_immutable
class Menu extends StatelessWidget {
  Menu({super.key, required this.menu});
  Coffeeandbreakfast menu;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height * 1,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(223, 220, 220, 1),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.sort,
                          size: 30,
                        ),
                        Text(
                          "MENU",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Icon(
                          Icons.search,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 12)),
                  Wrap(
                    children: [
                      for (int i = 0; i < menu.Menu.length; i++)
                        MenuItems(
                          menu: menu.Menu[i],
                          coffeeobj: menu,
                        )
                    ],
                  )
                ],
              ),
            )));
  }
}
