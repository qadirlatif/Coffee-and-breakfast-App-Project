import 'package:flutter/material.dart';
import 'Coffeeitems.dart';
import '../Discover/First_Screen_Search.dart';
import 'package:coffee_breakfast_app/model_class/model_class.dart';

// ignore: must_be_immutable
class CustomBottomSheet extends StatefulWidget {
  CustomBottomSheet({super.key, required this.coffee});
  Coffeeandbreakfast coffee;
  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.59,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white),
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "All",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "Cold Coffee",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none),
                      ),
                      Text("Hot Coffee",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none))
                    ],
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 4, 0, 4)),
                  SizedBox(
                    height: 50,
                    child: Searchfield(
                      text: "Search Your Coffee",
                    ),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 8, 0, 0)),
                  for (int i = 0; i < widget.coffee.Coffees.length; i++)
                    coffeeitems(
                        coffee: widget.coffee,
                        index: i,
                        coffeeobj: widget.coffee)
                ],
              ),
            )));
  }
}
