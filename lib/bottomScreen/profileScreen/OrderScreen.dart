// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/bottomScreen/profileScreen/profileScreen.dart';
import 'package:flutter/material.dart';

import 'OrderDetailsScreen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      appBar: AppBar(
          backgroundColor: Color(0xff1E1F28),
          title: Text(
            "Categories",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "My Orders",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(29))),
                  child: Center(
                    child: Text(
                      "Delivered",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xff1E1F28),
                      borderRadius: BorderRadius.all(Radius.circular(29))),
                  child: Center(
                    child: Text(
                      "Processing",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xff1E1F28),
                      borderRadius: BorderRadius.all(Radius.circular(29))),
                  child: Center(
                    child: Text(
                      "Cancelled",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Metropolis',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                        height: 175,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xff2A2C36),
                            borderRadius: BorderRadius.circular(8)),
                        margin: EdgeInsets.all(15),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ), //1st--------------
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Order №1947034",
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  "05-12-2019",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //2nd--------------
                            Row(
                              children: [
                                Text(
                                  "Tracking number:",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
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
                            SizedBox(
                              height: 8,
                            ),
                            //3rd--------------
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Quantity:",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "3",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Total Amount:",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "112D",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            //4th--------------
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 98,
                                  height: 36,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(29))),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    OdrerDetailsScreen()));
                                      },
                                      child: Text("Details",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Metropolis',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Delivered",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Metropolis',
                                    color: Color(0xff55D85A),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ));
                  }))
        ],
      ),
    );
  }
}
