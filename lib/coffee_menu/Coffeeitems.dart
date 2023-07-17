import 'package:coffee_breakfast_app/preloader/preloader.dart';
import 'package:flutter/material.dart';
import 'displayitem.dart';
import '../model_class/model_class.dart';

// ignore: camel_case_types, must_be_immutable
class coffeeitems extends StatefulWidget {
  coffeeitems(
      {super.key,
      required this.coffee,
      required this.index,
      required this.coffeeobj});
  Coffeeandbreakfast coffee;
  int index;
  Coffeeandbreakfast coffeeobj;
  @override
  State<coffeeitems> createState() => _coffeeitemsState();
}

class _coffeeitemsState extends State<coffeeitems> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Displayer(
                      coffee: widget.coffee.Coffees[widget.index],
                      coffeeobj: widget.coffeeobj)));
        });
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                //width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Preloader(
                        imageurl: widget.coffee.Coffees[widget.index].url,
                        height: 0.15,
                        width: 0.3)),
                const Padding(padding: EdgeInsets.fromLTRB(8, 0, 8, 0)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            child: Text(
                              widget.coffee.Coffees[widget.index].name
                                  .toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Text(widget.coffee.Coffees[widget.index].qoute)
                        ],
                      ),
                    ),
                    Text(
                      "\$ " +
                          widget.coffee.Coffees[widget.index].Price.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
              ],
            )),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(84, 49, 39, 1),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
