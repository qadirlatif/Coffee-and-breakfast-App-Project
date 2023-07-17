import 'package:flutter/material.dart';
import 'BagsAmountcalculator.dart';
import 'bagsCard.dart';
import 'bagsTopBar.dart';
import 'package:coffee_breakfast_app/model_class/model_class.dart';

// ignore: must_be_immutable
class Bags extends StatefulWidget {
  Bags({super.key, required this.coffeeobj});
  Coffeeandbreakfast coffeeobj;
  @override
  State<Bags> createState() => _BagsState();
}

class _BagsState extends State<Bags> {
  double deliverycharges = 10.00;
  double subtotal() {
    double result = 0;
    for (int i = 0; i < widget.coffeeobj.Bag.length; i++) {
      result = result + widget.coffeeobj.Bag[i].Price;
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(223, 220, 220, 1),
        ),
        child: SafeArea(
            child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.64,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  const BagsTopBar(),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
                  for (int i = 0; i < widget.coffeeobj.Bag.length; i++)
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * 0.15,
                            child: Stack(
                              children: [
                                ClipRRect(
                                    child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                            0,
                                            0,
                                            0),
                                        child: SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                            child: BagsCard(
                                                coffeeobj: widget.coffeeobj,
                                                i: i)))),
                                Positioned(
                                    right: MediaQuery.of(context).size.width *
                                        0.04,
                                    bottom: MediaQuery.of(context).size.height *
                                        0.05,
                                    child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          color: Color.fromRGBO(84, 49, 39, 1),
                                        ),
                                        child: GestureDetector(
                                          child: const Icon(
                                            Icons.close,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              widget.coffeeobj.Bag.removeAt(i);
                                            });
                                          },
                                        )))
                              ],
                            )))
                ],
              )),
            ),
            Amountcalculator(
                deliverycharges: deliverycharges, subtotal: subtotal())
          ],
        )));
  }
}
