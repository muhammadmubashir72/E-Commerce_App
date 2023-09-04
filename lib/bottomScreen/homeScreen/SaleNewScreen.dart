// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../models/productClass.dart';
import 'FashionSaleScreen.dart';
import 'package:http/http.dart' as http;

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  Product GetNewData = Product();
  Product GetSaleData = Product();

  @override
  void initState() {
    getNewData();
    getSaleData();

    // TODO: implement initState
    super.initState();
  }

  void getNewData() async {
    http.Response response = await http.get(Uri.parse(
        "https://ecommerce.salmanbediya.com/products/tag/new/getAll"));

    print(response.statusCode);
    print(response.body);
    try {
      if (response.statusCode == 200) {
        setState(() {
          
          GetNewData = Product.fromJson(jsonDecode(response.body));
          // loadedPhotos = Sale.fromJson(jsonDecode(response.body)) as List;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  void getSaleData() async {
    http.Response response = await http.get(Uri.parse(
        "https://ecommerce.salmanbediya.com/products/tag/sale/getAll"));

    print(response.statusCode);
    print(response.body);
    try {
      if (response.statusCode == 200) {
        setState(() {
          GetSaleData = Product.fromJson(jsonDecode(response.body));
          // loadedPhotos = Sale.fromJson(jsonDecode(response.body)) as List;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
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
      appBar: AppBar(
        backgroundColor: Color(0xff1E1F28),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          icon: Icon(Icons.chevron_left),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 376,
              height: 186,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1512436991641-6745cdb1723f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken),
              )),
              child: Padding(
                padding: const EdgeInsets.only(top: 136, left: 16),
                child: Text(
                  "Street clothes",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //sale===========================================

            Container(
              height: 380,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sale",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        "View all",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Super summer sale",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: GetSaleData == null
                        ? Center(
                            child: CircularProgressIndicator(color: Colors.white,),
                          )
                        : ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: ScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            itemCount: GetSaleData.products!.length,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 15),
                                    width: 148,
                                    height: 184,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: NetworkImage(
                                                "${GetSaleData.products![index].image ?? Text(
                                                      "Loading",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall,
                                                    )}"))),
                                    child: IconButton(
                                      padding: const EdgeInsets.only(
                                          top: 144, left: 110),
                                      alignment: Alignment.bottomRight,
                                      onPressed: () {},
                                      icon: CircleAvatar(
                                        radius: 26,
                                        backgroundColor: Color(0xff2A2C36),
                                        foregroundColor: Color(0xffABB4BD),
                                        child: Icon(
                                          Icons.favorite_border,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 150,
                                        child: RatingBar.builder(
                                          initialRating: 2,
                                          minRating: 0,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 13,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 2.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.favorite,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      )
                                      // Icon(
                                      //   Icons.star_rate,
                                      //   color: Color(0xffFFBA49),
                                      //   size: 13,
                                      // ),
                                      // Icon(
                                      //   Icons.star_rate,
                                      //   color: Color(0xffFFBA49),
                                      //   size: 13,
                                      // ),
                                      // Icon(
                                      //   Icons.star_rate,
                                      //   color: Color(0xffFFBA49),
                                      //   size: 13,
                                      // ),
                                      // Icon(
                                      //   Icons.star_rate,
                                      //   color: Color(0xffFFBA49),
                                      //   size: 13,
                                      // ),
                                      // Icon(
                                      //   Icons.star_rate,
                                      //   color: Color(0xffFFBA49),
                                      //   size: 13,
                                      // ),
                                      // Text(
                                      //   "10",
                                      //   style: Theme.of(context)
                                      //       .textTheme
                                      //       .labelSmall,
                                      // ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      "${GetSaleData.products![index].description}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontFamily: 'Metropolis',
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      "${GetSaleData.products![index].name}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${GetSaleData.products![index].price}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Metropolis',
                                          color: Colors.grey[700],
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),

                                      SizedBox(
                                        width: 5,
                                      ),

                                      // Text(
                                      //   "12D",
                                      //   style: TextStyle(
                                      //     fontSize: 16,
                                      //     fontFamily: 'Metropolis',
                                      //     color: Color(0xffFF3E3E),
                                      //     fontWeight: FontWeight.w500,
                                      //   ),
                                      // ),
                                    ],
                                  )
                                ],
                              );
                            }),
                  )
                ],
              ),
            ),

            Container(
              height: 380,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        "View all",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "You’ve never seen it before!",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: GetNewData == null
                        ? Center(
                            child: CircularProgressIndicator(color: Colors.white,),
                          )
                        : ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: ScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            itemCount: GetNewData.products!.length,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 15),
                                    width: 148,
                                    height: 184,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: NetworkImage(
                                                "${GetNewData.products![index].image ?? Text(
                                                      "Loading",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall,
                                                    )}"))),
                                    child: IconButton(
                                      padding: const EdgeInsets.only(
                                          top: 144, left: 110),
                                      alignment: Alignment.bottomRight,
                                      onPressed: () {},
                                      icon: CircleAvatar(
                                        radius: 26,
                                        backgroundColor: Color(0xff2A2C36),
                                        foregroundColor: Color(0xffABB4BD),
                                        child: Icon(
                                          Icons.favorite_border,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 150,
                                        child: RatingBar.builder(
                                          initialRating: 2,
                                          minRating: 0,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 13,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 2.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.favorite,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ) // Icon(
                                      //   Icons.star_rate,
                                      //   color: Color(0xffFFBA49),
                                      //   size: 13,
                                      // ),
                                      // Icon(
                                      //   Icons.star_rate,
                                      //   color: Color(0xffFFBA49),
                                      //   size: 13,
                                      // ),
                                      // Icon(
                                      //   Icons.star_rate,
                                      //   color: Color(0xffFFBA49),
                                      //   size: 13,
                                      // ),
                                      // Icon(
                                      //   Icons.star_rate,
                                      //   color: Color(0xffFFBA49),
                                      //   size: 13,
                                      // ),
                                      // Icon(
                                      //   Icons.star_rate,
                                      //   color: Color(0xffFFBA49),
                                      //   size: 13,
                                      // ),
                                      // Text(
                                      //   "10",
                                      //   style: Theme.of(context)
                                      //       .textTheme
                                      //       .labelSmall,
                                      // ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      "${GetNewData.products![index].description}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontFamily: 'Metropolis',
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      "${GetNewData.products![index].name}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${GetNewData.products![index].price}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Metropolis',
                                          color: Colors.grey[700],
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),

                                      SizedBox(
                                        width: 5,
                                      ),

                                      // Text(
                                      //   "12D",
                                      //   style: TextStyle(
                                      //     fontSize: 16,
                                      //     fontFamily: 'Metropolis',
                                      //     color: Color(0xffFF3E3E),
                                      //     fontWeight: FontWeight.w500,
                                      //   ),
                                      // ),
                                    ],
                                  )
                                ],
                              );
                            }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
