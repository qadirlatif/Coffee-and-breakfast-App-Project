import 'package:coffee_breakfast_app/coffee_menu/displayitem.dart';
import 'package:flutter/material.dart';
import 'package:coffee_breakfast_app/model_class/model_class.dart';
// ignore: depend_on_referenced_packages
import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class BreakfastMenuCard extends StatefulWidget {
  BreakfastMenuCard({super.key, required this.coffeeobj, required this.index});
  Coffeeandbreakfast coffeeobj;
  int index;
  @override
  State<BreakfastMenuCard> createState() => _BreakfastMenuCardState();
}

class _BreakfastMenuCardState extends State<BreakfastMenuCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.15,
        child: Row(
          children: [
            Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.15,
                child: CachedNetworkImage(
                  placeholder: (context, url) =>
                      Image.asset('assets/preloader.gif'),
                  imageUrl: widget.coffeeobj.breakfast[widget.index].url,
                  fit: BoxFit.fill,
                )),
            Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.coffeeobj.breakfast[widget.index].name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "\$ ${widget.coffeeobj.breakfast[widget.index].Price}",
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Text("this is very fresh baked product"),
                          Text("this is very fresh baked product"),
                        ],
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
      onTap: () {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Displayer(
                      coffee: widget.coffeeobj.breakfast[widget.index],
                      coffeeobj: widget.coffeeobj)));
        });
      },
    );
  }
}
