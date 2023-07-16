import 'package:flutter/material.dart';
import 'package:coffee_breakfast_app/model_class/model_class.dart';
// ignore: depend_on_referenced_packages
import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class BagsCard extends StatelessWidget {
  BagsCard({super.key, required this.coffeeobj, required this.i});
  Coffeeandbreakfast coffeeobj;
  int i;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Row(
        children: [
          CachedNetworkImage(
            placeholder: (context, url) => Image.asset('assets/preloader.gif'),
            imageUrl: coffeeobj.Bag[i].url,
            width: MediaQuery.of(context).size.width * 0.3,
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.05, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeobj.Bag[i].name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Padding(padding: EdgeInsets.all(8)),
                    Text(coffeeobj.Bag[i].qoute),
                    
                  ],
                ),
                Text(
                  "\$ ${coffeeobj.Bag[i].Price}",
                  style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
