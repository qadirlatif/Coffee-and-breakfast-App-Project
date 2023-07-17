import 'package:flutter/material.dart';
import '../model_class/model_class.dart';

// ignore: must_be_immutable
class DisplayerBottomSheet extends StatefulWidget {
  DisplayerBottomSheet(
      {super.key, required this.coffee, required this.coffeeobj});
  Coffeeandbreakfast coffee;
  Coffeeandbreakfast coffeeobj;
  @override
  State<DisplayerBottomSheet> createState() => _DisplayerBottomSheetState();
}

class _DisplayerBottomSheetState extends State<DisplayerBottomSheet> {
  bool check(Coffeeandbreakfast coffee) {
    if (widget.coffeeobj.Bag.contains(coffee)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.coffee.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontSize: 40),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color.fromRGBO(251, 155, 50, 1),
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromRGBO(251, 155, 50, 1),
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromRGBO(251, 155, 50, 1),
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromRGBO(251, 155, 50, 1),
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromRGBO(251, 155, 50, 1),
                      ),
                    ],
                  ),
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Padding(padding: EdgeInsets.all(4)),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("price"),
                      Text(
                        "\$ " + widget.coffee.Price.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      )
                    ],
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (check(widget.coffee)) {
                              widget.coffeeobj.Bag.remove(widget.coffee);
                            } else {
                              widget.coffeeobj.Bag.add(widget.coffee);
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        child: Text(check(widget.coffee)
                            ? "Remove From Bag"
                            : "Add To Bag"),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
