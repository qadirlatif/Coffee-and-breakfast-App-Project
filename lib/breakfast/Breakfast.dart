// ignore: file_names
import 'package:coffee_breakfast_app/breakfast_menu/Breakfast_menu.dart';
import 'package:coffee_breakfast_app/preloader/preloader.dart';
import 'package:flutter/material.dart';
import '../model_class/model_class.dart';


// ignore: must_be_immutable
class Breakfast extends StatefulWidget {

  Breakfast({super.key, required this.coffeeobj});
  Coffeeandbreakfast coffeeobj;
  @override
  State<Breakfast> createState() => _BreakfastState();
}

class _BreakfastState extends State<Breakfast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(color: Color.fromRGBO(245, 245, 245, 1)),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.8,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                spreadRadius: 2),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            0, 0, 0, MediaQuery.of(context).size.height * 0.1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            
                            Preloader(imageurl: 'https://static-01.daraz.pk/p/bb5e284f0bb2c88d3c6c32e2b8000fd0.jpg', height: 0.4, width: 1),
                            const Column(
                              children: [
                                Text(
                                  'Breakfast',
                                  style: TextStyle(
                                      fontSize: 30,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                                  child: Text(
                                    "It is a r will be distracted by the content of a page is that it has a more-or-lessasd ",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              )
            ],
          ),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.07,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.3, 0, 0, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BreakfastMenu(
                              coffeeobj: widget.coffeeobj)));
                      });
                    },
                    child: const Text("Full Menu"),
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
