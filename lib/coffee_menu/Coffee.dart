// ignore: file_names
import '../preloader/preloader.dart';

import '../model_class/model_class.dart';

import 'bottom_sheet.dart';
import 'picture_stack_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Coffee extends StatefulWidget {
  Coffee({super.key, required this.coffee, required this.coffeeobj});
  Coffeeandbreakfast coffee;
  Coffeeandbreakfast coffeeobj;
  @override
  State<Coffee> createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            child: Stack(
              children: [
                ClipRRect(
                  child: 
                  Preloader(imageurl: 'https://t4.ftcdn.net/jpg/01/05/90/77/360_F_105907729_4RzHYsHJ2UFt5koUI19fc6VzyFPEjeXe.jpg', height: 0.5, width: 1)
                ),
                 Column(
                  children: [
                    TopStackText(),

                    CustomBottomSheet(coffee: widget.coffeeobj)
                  ],
                )
              ],
            )));
  }
}
