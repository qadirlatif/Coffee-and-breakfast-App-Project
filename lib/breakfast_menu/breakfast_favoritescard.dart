import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffee_breakfast_app/model_class/model_class.dart';

// ignore: must_be_immutable
class Breakfastfavoritescard extends StatefulWidget {
  Breakfastfavoritescard({super.key, required this.coffeeobj});
  Coffeeandbreakfast coffeeobj;

  @override
  State<Breakfastfavoritescard> createState() => _BreakfastfavoritescardState();
}

class _BreakfastfavoritescardState extends State<Breakfastfavoritescard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        //height: MediaQuery.of(context).size.height * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: CachedNetworkImage(
                placeholder: (context, url) =>
                    Image.asset('assets/preloader.gif'),
                imageUrl: widget.coffeeobj.url,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Text(
                widget.coffeeobj.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Text(widget.coffeeobj.qoute),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 17,
                        color: Color.fromRGBO(235, 141, 30, 1),
                      ),
                      Icon(
                        Icons.star,
                        size: 17,
                        color: Color.fromRGBO(235, 141, 30, 1),
                      ),
                      Icon(
                        Icons.star,
                        size: 17,
                        color: Color.fromRGBO(235, 141, 30, 1),
                      ),
                      Icon(
                        Icons.star,
                        size: 17,
                        color: Color.fromRGBO(235, 141, 30, 1),
                      ),
                      Icon(
                        Icons.star,
                        size: 17,
                        color: Color.fromRGBO(235, 141, 30, 1),
                      ),
                    ],
                  ),
                  Text(
                    "\$ ${widget.coffeeobj.Price}",
                    style: const TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
