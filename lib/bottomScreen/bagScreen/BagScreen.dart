// ignore_for_file: file_names, prefer_const_constructors

import 'package:e_commerce_app/bottomScreen/bagScreen/BagCheckScreen.dart';
import 'package:e_commerce_app/widget/button.dart';
import 'package:flutter/material.dart';

var _ItemCount = 1;

class BagScreen extends StatefulWidget {
  const BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  List images = [
    "assets/images/b1.jpg",
    "assets/images/b2.jpg",
    "assets/images/b3.jpg",
    "assets/images/b4.jpg",
    "assets/images/b5.jpg",
    "assets/images/b6.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E1F28),
        appBar: AppBar(backgroundColor: Color(0xff1E1F28), actions: [
          IconButton(
            onPressed: () {
              // Navigator.pop(
              //     context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            icon: Icon(
              Icons.search,
              size: 17.49,
            ),
          ),
        ]),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 239, top: 30),
              child: Text(
                "My Bag",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 380,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xff2A2C36),
                          borderRadius: BorderRadius.circular(8)),
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                images[index],
                                // "assets/images/b1.jpg",
                                width: 104,
                                height: 104,
                                fit: BoxFit.fitHeight,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Text(
                                      "Pullover",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                    SizedBox(width: 143),
                                    Icon(Icons.more_vert,
                                        color: Color(0xffABB4BD), size: 24)
                                  ]),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(children: [
                                    Row(children: [
                                      Text("Color",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("Gray",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium)
                                    ]),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Row(children: [
                                      Text("Size",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("L",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium)
                                    ])
                                  ]),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(children: [
                                        Container(
                                            width: 36,
                                            height: 36,
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                        255, 27, 28, 34)
                                                    .withOpacity(0.1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(24))),
                                            child: Center(
                                              child: IconButton(
                                                padding:
                                                    EdgeInsets.only(bottom: 13),
                                                onPressed: () {
                                                  setState(() {
                                                    if (_ItemCount >= 1) {
                                                      _ItemCount -= 1;
                                                    }
                                                  });
                                                },
                                                icon: Icon(
                                                  size: 24,
                                                  Icons.minimize,
                                                  color: Color(0xffABB4BD),
                                                ),
                                              ),
                                            )),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "${_ItemCount}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                            width: 36,
                                            height: 36,
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                        255, 27, 28, 34)
                                                    .withOpacity(0.1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(24))),
                                            child: Center(
                                              child: IconButton(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 2, vertical: 2),
                                                onPressed: () {
                                                  setState(() {
                                                    _ItemCount += 1;
                                                  });
                                                },
                                                icon: Icon(
                                                  size: 24,
                                                  Icons.add,
                                                  color: Color(0xffABB4BD),
                                                ),
                                              ),
                                            )),
                                        SizedBox(
                                          width: 100,
                                        ),
                                        Text("51",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium)
                                      ]),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: TextField(
                maxLength: 10,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.bodySmall,
                cursorHeight: 17,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    suffix: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                            color: Color(0xffABB4BD),
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        child: Center(
                          child: IconButton(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 2),
                            onPressed: () {},
                            icon: Icon(
                              size: 24,
                              Icons.arrow_forward,
                              color: Color(0xff2A2C36),
                            ),
                          ),
                        )),
                    fillColor: Color(0xff2A2C36),
                    filled: true,
                    labelText: "CODE",
                    labelStyle: Theme.of(context).textTheme.bodySmall,
                    hintText: "Enter your promo code",
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(35),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(35),
                        ),
                        borderSide: BorderSide(color: Color(0xff2A2C36))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(35),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(35),
                        ),
                        borderSide: BorderSide(color: Color(0xff2A2C36)))),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total amount:",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text("51", style: Theme.of(context).textTheme.titleSmall)
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            RoundedButton(
                name: "CHECK OUT",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CheckoutScreen()));
                })
          ],
        ));
  }

  Widget _ShowBuyItemsTile() {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff2A2C36), borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      child: Row(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/b1.jpg",
                // images[index],
                width: 104,
                height: 104,
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
          SizedBox(
            width: 7,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      "Pullover",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(width: 143),
                    Icon(Icons.more_vert, color: Color(0xffABB4BD), size: 24)
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Row(children: [
                    Row(children: [
                      Text("Color",
                          style: Theme.of(context).textTheme.displaySmall),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Gray",
                          style: Theme.of(context).textTheme.displayMedium)
                    ]),
                    SizedBox(
                      width: 20,
                    ),
                    Row(children: [
                      Text("Size",
                          style: Theme.of(context).textTheme.displaySmall),
                      SizedBox(
                        width: 5,
                      ),
                      Text("L",
                          style: Theme.of(context).textTheme.displayMedium)
                    ])
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(children: [
                        Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 27, 28, 34)
                                    .withOpacity(0.1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24))),
                            child: Center(
                              child: IconButton(
                                padding: EdgeInsets.only(bottom: 13),
                                onPressed: () {
                                  setState(() {
                                    if (_ItemCount >= 1) {
                                      _ItemCount -= 1;
                                    }
                                  });
                                },
                                icon: Icon(
                                  size: 24,
                                  Icons.minimize,
                                  color: Color(0xffABB4BD),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${_ItemCount}",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 27, 28, 34)
                                    .withOpacity(0.1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24))),
                            child: Center(
                              child: IconButton(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 2),
                                onPressed: () {
                                  setState(() {
                                    _ItemCount += 1;
                                  });
                                },
                                icon: Icon(
                                  size: 24,
                                  Icons.add,
                                  color: Color(0xffABB4BD),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Text("51",
                            style: Theme.of(context).textTheme.bodyMedium)
                      ]),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
