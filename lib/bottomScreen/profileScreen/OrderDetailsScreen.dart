// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'OrderScreen.dart';

class OdrerDetailsScreen extends StatefulWidget {
  const OdrerDetailsScreen({super.key});

  @override
  State<OdrerDetailsScreen> createState() => _OdrerDetailsScreenState();
}

class _OdrerDetailsScreenState extends State<OdrerDetailsScreen> {
  List images = [
    "assets/images/b1.jpg",
    "assets/images/b2.jpg",
    "assets/images/b3.jpg",
        "assets/images/b4.jpg",

    "assets/images/b6.jpg",
    "assets/images/b5.jpg",
    "assets/images/cloth1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      appBar: AppBar(
          backgroundColor: Color(0xff1E1F28),
          title: Text(
            "Order Details",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              setState(() {
              Navigator.pop(context,);  
              });
              
            },
            icon: Icon(
              Icons.chevron_left,
              size: 24,
            ),
          ),
          actions: [
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
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order №1947034",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Text(
                      "05-12-2019",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Tracking number:",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "IW3475453455",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    Row(children: [
                      Text("Delivered",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Metropolis',
                          color: Color(0xff55D85A),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ])
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text("3 items", style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
          Container(
              height: 350,
              // width: 343,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return _ShowBuyItemsTile();
                },
              )),
          Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text("Order information",
                      style: Theme.of(context).textTheme.bodyMedium),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 130,
                          height: 30,
                          child: Text("Shipping Address:",
                              style: Theme.of(context).textTheme.headlineSmall),
                        ),
                        Container(
                            width: 220,
                            height: 30,
                            child: Text(
                                "3 Newbridge Court ,Chino Hills, CA 91709, United States",
                                style: Theme.of(context).textTheme.bodyMedium)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          height: 30,
                          child: Text("Payment Method:",
                              style: Theme.of(context).textTheme.headlineSmall),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset("assets/images/mastercard.png",
                            width: 31.97, height: 24.93),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            width: 160,
                            height: 30,
                            child: Text("**** **** **** 3947",
                                style: Theme.of(context).textTheme.bodyMedium)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 130,
                          height: 30,
                          child: Text("Delivery Method:",
                              style: Theme.of(context).textTheme.headlineSmall),
                        ),
                        Container(
                            width: 220,
                            height: 30,
                            child: Text("FedEx, 3 days, 15",
                                style: Theme.of(context).textTheme.bodyMedium)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 130,
                          height: 30,
                          child: Text("Discount:",
                              style: Theme.of(context).textTheme.headlineSmall),
                        ),
                        Container(
                            width: 220,
                            height: 30,
                            child: Text("10%, Personal promo code",
                                style: Theme.of(context).textTheme.bodyMedium)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      children: [
                        Container(
                          width: 130,
                          height: 30,
                          child: Text("Total Amount:",
                              style: Theme.of(context).textTheme.headlineSmall),
                        ),
                        Container(
                            width: 220,
                            height: 30,
                            child: Text("133",
                                style: Theme.of(context).textTheme.bodyMedium)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 160,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        child: Center(
                          child: Text(
                            "Reorder",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color(0xffEF3651),
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        child: Center(
                          child: Text(
                            "Leave feedback",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }

  Container _ShowBuyItemsTile() {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff2A2C36), borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GestureDetector(
        child: Row(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/b1.jpg"
                  // images[index]
                  ,
                  width: 104,
                  height: 104,
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pullover",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Mango",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    SizedBox(
                      height: 10,
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
                          Text("Units",
                              style: Theme.of(context).textTheme.displaySmall),
                          SizedBox(
                            width: 5,
                          ),
                          Text("1",
                              style: Theme.of(context).textTheme.displayMedium)
                        ]),
                        Row(children: [
                          SizedBox(
                            width: 170,
                          ),
                          Text("51",
                              style: Theme.of(context).textTheme.displayMedium),
                        ])
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
