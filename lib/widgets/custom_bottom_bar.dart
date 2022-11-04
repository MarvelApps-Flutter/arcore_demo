import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  Function? onTapCall;
  CustomBottomBar({Key? key, this.onTapCall}) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: <Widget>[
        Positioned(
          //top: 50,
          child: Container(
            height: 65,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
              ),
            ]),
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8.0, 8, 8),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 0;
                            });
                          },
                          child: selectedIndex != 0
                              ? Image.asset(
                                  "assets/images/home.png",
                                  height: 20,
                                  width: 20,
                                )
                              : Image.asset(
                                  "assets/images/home.png",
                                  color: Colors.black,
                                  height: 20,
                                  width: 20,
                                )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 10),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                          },
                          child: selectedIndex != 1
                              ? Image.asset(
                                  "assets/images/tag.png",
                                  height: 20,
                                  width: 20,
                                )
                              : Image.asset(
                                  "assets/images/tag.png",
                                  color: Colors.black,
                                  height: 20,
                                  width: 20,
                                )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 10),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 2;
                            });
                          },
                          child: selectedIndex != 2
                              ? Image.asset(
                                  "assets/images/bell.png",
                                  height: 20,
                                  width: 20,
                                )
                              : Image.asset(
                                  "assets/images/bell.png",
                                  color: Colors.black,
                                  height: 20,
                                  width: 20,
                                )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 10),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 3;
                            });
                          },
                          child: selectedIndex != 3
                              ? Image.asset(
                                  "assets/images/person.png",
                                  height: 20,
                                  width: 20,
                                )
                              : Image.asset(
                                  "assets/images/person.png",
                                  color: Colors.black,
                                  height: 20,
                                  width: 20,
                                )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // InkWell(
        //   onTap: () {
        //     widget.onTapCall!();

        //   },
        //   child: Align(
        //     alignment: Alignment.topCenter,
        //     child: ClipOval(
        //       child: Image.asset(
        //         "assets/images/message.png",
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }
}
