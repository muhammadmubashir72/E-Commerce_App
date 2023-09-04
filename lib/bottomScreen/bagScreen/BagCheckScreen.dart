// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/bottomScreen/bagScreen/AddShippingScreen%20.dart';
import 'package:e_commerce_app/bottomScreen/bagScreen/BagScreen.dart';
import 'package:e_commerce_app/bottomScreen/bagScreen/SuccessScreen.dart';
import 'package:flutter/material.dart';

import '../../widget/button.dart';

bool _check = true;

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E1F28),
        appBar: AppBar(
          backgroundColor: Color(0xff1E1F28),
          title: Text(
            "Checkout",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => BagScreen()));
            },
            icon: Icon(Icons.chevron_left),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Shipping address",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff2A2C36),
                    borderRadius: BorderRadius.circular(8)),
                // margin: EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: Text("Address",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Metropolis',
                              color: Color(0xffEF3651),
                              fontWeight: FontWeight.w500,
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ShippingAddressScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 15, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payment",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        TextButton(
                            onPressed: _showBottomSheet,
                            child: Text("Add Card",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Metropolis',
                                  color: Color(0xffEF3651),
                                  fontWeight: FontWeight.w500,
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 1, bottom: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/card.png",
                        ),
                        Text(
                          "**********",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "Delivery method",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/Fedex.png",
                    width: 110,
                    height: 110,
                  ),
                  Image.asset(
                    "assets/images/usps.png",
                    width: 110,
                    height: 110,
                  ),
                  Image.asset(
                    "assets/images/dhl.png",
                    width: 110,
                    height: 110,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order:",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text("112",
                            style: Theme.of(context).textTheme.titleSmall),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery:",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text("15",
                            style: Theme.of(context).textTheme.titleSmall),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Summary:",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text("127",
                            style: Theme.of(context).textTheme.titleSmall)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RoundedButton(
                  name: "SUBMIT ORDER",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SuccessScreen()));
                  })
            ],
          ),
        ));
  }

  _showBottomSheet() {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34), topRight: Radius.circular(34))),
        backgroundColor: Color(0xff1E1F28),
        context: context,
        builder: (context) {
          return Form(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Add new card",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    maxLength: 30,
                    cursorHeight: 17,
                    cursorColor: Colors.white10,
                    keyboardType: TextInputType.name,
                    // controller: nameController,
                    style: Theme.of(context).textTheme.bodySmall,
                    autofocus: true,
                    onChanged: (Value) {
                      setState(() {
                        // _namee = Value;
                      });
                    },
                    decoration: InputDecoration(
                        fillColor: Color(0xff2A2C36),
                        filled: true,
                        contentPadding: EdgeInsets.all(25),
                        labelText: "Card Name",
                        labelStyle: Theme.of(context).textTheme.headlineSmall,
                        hintText: "Name on card",
                        hintStyle: Theme.of(context).textTheme.bodyMedium,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2A2C36))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2A2C36)))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLength: 30,
                    cursorHeight: 17,
                    cursorColor: Colors.white10,
                    keyboardType: TextInputType.name,
                    // controller: nameController,
                    style: Theme.of(context).textTheme.bodySmall,
                    autofocus: true,
                    onChanged: (Value) {
                      setState(() {
                        // _namee = Value;
                      });
                    },

                    decoration: InputDecoration(
                        suffixIcon: Image.asset(
                          "assets/images/mastercard.png",
                          width: 31.97,
                          height: 24.93,
                        ),
                        fillColor: Color(0xff2A2C36),
                        filled: true,
                        contentPadding: EdgeInsets.all(25),
                        labelText: "Card Number",
                        labelStyle: Theme.of(context).textTheme.headlineSmall,
                        hintText: "5546 8205 3693 3947",
                        hintStyle: Theme.of(context).textTheme.bodyMedium,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2A2C36))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2A2C36)))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLength: 30,
                    cursorHeight: 17,
                    cursorColor: Colors.white10,
                    keyboardType: TextInputType.name,
                    // controller: nameController,
                    style: Theme.of(context).textTheme.bodySmall,
                    autofocus: true,
                    onChanged: (Value) {
                      setState(() {
                        // _namee = Value;
                      });
                    },
                    decoration: InputDecoration(
                        fillColor: Color(0xff2A2C36),
                        filled: true,
                        contentPadding: EdgeInsets.all(25),
                        labelText: "Expire Date",
                        labelStyle: Theme.of(context).textTheme.headlineSmall,
                        hintText: "25/08/2023",
                        hintStyle: Theme.of(context).textTheme.bodyMedium,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2A2C36))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2A2C36)))),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    maxLength: 30,
                    cursorHeight: 17,
                    cursorColor: Colors.white10,
                    keyboardType: TextInputType.name,
                    // controller: nameController,
                    style: Theme.of(context).textTheme.bodySmall,
                    autofocus: true,
                    onChanged: (Value) {
                      setState(() {
                        // _namee = Value;
                      });
                    },
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.help_center_outlined,
                            color: Color(0xffABB4BD), size: 20),
                        fillColor: Color(0xff2A2C36),
                        filled: true,
                        contentPadding: EdgeInsets.all(25),
                        labelText: "CVV",
                        labelStyle: Theme.of(context).textTheme.headlineSmall,
                        hintText: "567",
                        hintStyle: Theme.of(context).textTheme.bodyMedium,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2A2C36))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2A2C36)))),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(
                          fillColor: MaterialStatePropertyAll(Colors.white),
                          // activeColor: Colors.black,
                          checkColor: Colors.black,
                          value: _check,
                          onChanged: (bool? onTap) {
                            setState(() {
                              _check = onTap!;
                            });
                          }),
                      Text(
                        "Set as default payment method",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  RoundedButton(
                      name: "ADD CARD",
                      onPressed: () {
                        Navigator.pop(context);
                      })
                ],
              ),
            ),
          );
        });
  }
}
