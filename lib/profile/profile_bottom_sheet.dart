import 'package:flutter/material.dart';

class ProfileBottomSheet extends StatelessWidget {
  const ProfileBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        child: Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(223, 220, 220, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomWidget().customwidget("11"),
                      const CustomWidget().customwidget("986"),
                      const CustomWidget().customwidget("128"),
                      const CustomWidget().customwidget("52"),
                    ],
                  ),
                  const Text(
                    "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                        onPressed: () {},
                        child: const Text("Follow")),
                  )
                ],
              ),
            )));
  }
}

class CustomWidget extends Material {
  const CustomWidget({super.key});

  Widget customwidget(String numbers) {
    return Column(
      children: [
        Text(
          numbers,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        const Text(
          "Favorites",
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
