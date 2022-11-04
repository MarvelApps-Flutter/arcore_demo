import 'package:flutter/material.dart';
import '../models/item_model.dart';
import '../widgets/custom_bottom_bar.dart';
import 'ar_item_view_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:
          Container(color: Colors.red, height: 65, child: CustomBottomBar()),
      appBar: buildAppBar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: ((context, index) {
                        return const Divider(
                          indent: 3,
                          endIndent: 3,
                        );
                      }),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ARItemViewScreen(
                                        imageUrl: items[index].gltfImageUrl!)));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 7,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        height: 100.0,
                                        width: 90.0,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 5.0)
                                            ],
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "${items[index].pngImageUrl}"),
                                                fit: index == 3
                                                    ? BoxFit.fill
                                                    : BoxFit.contain)),
                                      ),
                                    ),
                                  ),
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 13,
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 4.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(items[index].title ?? "",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1!
                                                          .copyWith(
                                                              fontFamily:
                                                                  "Inter",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 16,
                                                              color: Color(
                                                                  0xff606060))),
                                                  const Spacer(),
                                                  Image.asset(
                                                    "assets/images/cancel.png",
                                                    height: 25,
                                                    width: 25,
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                                "\$ ${items[index].price ?? ""}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                        fontFamily: "Inter",
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14,
                                                        color: Colors.black)),
                                            const SizedBox(
                                              height: 22,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  right: 4.0),
                                              alignment: Alignment.bottomRight,
                                              child: Image.asset(
                                                "assets/images/buy.png",
                                                height: 30,
                                                width: 30,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        );
                      },
                      itemCount: items.length),
                  const SizedBox(
                    height: 70,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(vertical: 17, horizontal: 110)),
                onPressed: () {},
                child: Text("Add all to my cart"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset(
          "assets/images/search.png",
          height: 20,
          width: 20,
        ),
      ),
      centerTitle: true,
      title: const Text(
        "Favorites",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset("assets/images/cart.png"),
        ),
      ],
    );
  }
}
