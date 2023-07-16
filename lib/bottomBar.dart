//import 'package:coffee_and_breakfast_app/profile/profile.dart';

//import 'package:coffee_and_breakfast_app/bags/Bags.dart';
import 'favorites/favorites.dart';

import 'Discover/body.dart';
import 'package:flutter/material.dart';
import 'model_class/model_class.dart';
import '../menu/menu.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _MenuState();
}

class _MenuState extends State<BottomBar> {
  int index = 1;
  Coffeeandbreakfast menu = Coffeeandbreakfast('', '', '', 500.0);
  @override
  void initState() {
    // TODO: implement initState
    menu.addCoffees();
    menu.addMenu();
    menu.addbreakfast();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: index == 1
            ? Menu(
                menu: menu,
              )
            : index == 2
                ? Favorites(
                    favorites: menu,
                  )
                :/* index == 3
                    ? Bags(
                        coffeeobj: menu,
                      )
                    : index == 4
                        ? const Profile()
                        :*/ const Body(),
        bottomNavigationBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
                color: const Color.fromRGBO(223, 220, 220, 1),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              index = 1;
                            });
                          },
                          icon: Icon(
                            Icons.home,
                            color: index == 1 ? Colors.green : Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              index = 2;
                            });
                          },
                          icon: Icon(Icons.favorite,
                              color: index == 2 ? Colors.green : Colors.grey)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              index = 3;
                            });
                          },
                          icon: Icon(Icons.shopping_bag,
                              color: index == 3 ? Colors.green : Colors.grey)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              index = 4;
                            });
                          },
                          icon: Icon(Icons.person,
                              color: index == 4 ? Colors.green : Colors.grey)),
                    ],
                  ),
                ))));
  }
}
