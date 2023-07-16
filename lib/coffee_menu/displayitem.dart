
import 'package:coffee_breakfast_app/preloader/preloader.dart';
import 'package:flutter/material.dart';
import 'displayer_bottom_sheet.dart';
import '../model_class/model_class.dart';

// ignore: must_be_immutable
class Displayer extends StatefulWidget {
  Displayer({super.key, required this.coffee, required this.coffeeobj});
  Coffeeandbreakfast coffee;
  Coffeeandbreakfast coffeeobj;

  @override
  State<Displayer> createState() => _DisplayerState();
}

class _DisplayerState extends State<Displayer> {
  alertmessage(String message) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(message),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: const Text("OK"))
            ],
          );
        });
  }

  bool checker(Coffeeandbreakfast coffee) {
    if (widget.coffeeobj.favorites.contains(coffee)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height * 1,
      decoration: const BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          ClipRRect(
            child: 
            Preloader(imageurl: widget.coffee.url, height: 0.6, width: 1)
          ),
          SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),
              DisplayerBottomSheet(coffee: widget.coffee, coffeeobj: widget.coffeeobj,)
            ],
          )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, 0, MediaQuery.of(context).size.width * 0.05, 0),
                      child: FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            if (checker(widget.coffee)) {
                              widget.coffeeobj.favorites.remove(widget.coffee);
                              alertmessage("Item removed from favorites!");
                            } else {
                              widget.coffeeobj.favorites.add(widget.coffee);
                              alertmessage("Item added into favorites!");
                            }
                          });
                        },
                        backgroundColor: checker(widget.coffee)
                            ? Colors.lightBlue
                            : Colors.white,
                        elevation: 8,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        child: const Icon(
                          Icons.favorite,
                          size: 25,
                          color: Colors.brown,
                        ),
                      ))
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
