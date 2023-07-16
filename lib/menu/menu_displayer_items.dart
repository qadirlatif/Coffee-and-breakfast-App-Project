//import 'package:coffee_and_breakfast_app/breakfast/Breakfast.dart';
import 'package:flutter/material.dart';
import '../Coffee_menu/Coffee.dart';
import '../model_class/model_class.dart';
// ignore: depend_on_referenced_packages
import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class MenuItems extends StatefulWidget {
  MenuItems({super.key, required this.menu, required this.coffeeobj});
  Coffeeandbreakfast menu;
  Coffeeandbreakfast coffeeobj;

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
        child: Card(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              setState(() {
                if (widget.menu.name == "Coffee") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Coffee(
                              coffee: widget.menu,
                              coffeeobj: widget.coffeeobj)));
                  //Navigator.pushNamed(context, '/Coffee');
                } else if (widget.menu.name == "BreakFast") {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Breakfast(
                              
                              coffeeobj: widget.coffeeobj)));*/
                }
              });
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
              height: 188,
              child: Column(
                children: [
                  CachedNetworkImage(
      placeholder: (context, url) => Image.asset('assets/preloader.gif'),
      imageUrl: widget.menu.url,
      width: MediaQuery.of(context).size.width * 0.45,
      fit: BoxFit.fill,
      height: 120,
    ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(8, 4, 0, 0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          widget.menu.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          widget.menu.qoute.toString(),
                          style: const TextStyle(fontSize: 12),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
