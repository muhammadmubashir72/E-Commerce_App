// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/bottomScreen/shopScreen/CategoriesScreen.dart';
import 'package:flutter/material.dart';

import '../../widget/button.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/images/success.png",
              fit: BoxFit.cover,
              width: 208,
              height: 213,
            ),
            SizedBox(
              height: 35,
            ),
            Text("Success!", style: Theme.of(context).textTheme.bodyLarge),
            Container(
              margin: EdgeInsets.only(top: 20, left: 40),
              width: 225,
              height: 42,
              child: Text(
                  "Your order will be delivered soon. Thank you for choosing our app!",
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
            SizedBox(
              height: 180,
            ),
            RoundedButton(
                name: "CONTINUE SHOPPING",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShopScreen()));
                })
          ],
        ),
      ),
    );
  }
}
