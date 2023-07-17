import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Amountcalculator extends StatelessWidget {
  Amountcalculator(
      {super.key, required this.deliverycharges, required this.subtotal});
  double deliverycharges;
  double subtotal;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(223, 220, 220, 1),
        ),
        height: MediaQuery.of(context).size.height * 0.2,
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Delivery Charges: ",
                    style: TextStyle(fontSize: 20),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(12, 0, 0, 0)),
                  Text(
                    "\$ $deliverycharges",
                    style: const TextStyle(fontSize: 20),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Subtotal: ",
                    style: TextStyle(fontSize: 20),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(12, 0, 0, 0)),
                  Text(
                    "\$ ${subtotal}",
                    style: const TextStyle(fontSize: 20),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Total: ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(12, 0, 0, 0)),
                  Text(
                    "\$ ${deliverycharges + subtotal}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Secure Checkout")),
              )
            ],
          ),
        ));
  }
}
