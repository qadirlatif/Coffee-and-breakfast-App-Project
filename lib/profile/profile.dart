import 'package:coffee_breakfast_app/profile/profile_bottom_sheet.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 1,
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Stack(
              children: [
                ClipRRect(
                  child: Image.network(
                    'https://guycounseling.com/wp-content/uploads/2018/06/man-drinking-coffee.jpg',
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width * 1,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.white.withOpacity(0.0),
                            Colors.black.withOpacity(1),
                          ],
                          stops: const [
                            0.0,
                            1.0
                          ])),
                ),
                SafeArea(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      24, 0, 24, MediaQuery.of(context).size.height * 0.15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.sort,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            "Menu",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Peter R.Gracia",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Coffee Taste Owner",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 3),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30))),
                            child: const Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          const ProfileBottomSheet()
        ],
      ),
    ));
  }
}
