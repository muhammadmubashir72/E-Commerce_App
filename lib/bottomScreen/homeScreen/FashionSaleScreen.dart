// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:convert';

import 'package:e_commerce_app/models/productClass.dart';
import 'package:e_commerce_app/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;
import 'SaleNewScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Product GetNewData = Product();

  @override
  void initState() {
    Timer(Duration.zero, () {
      getNewData();
    });
    getNewData();
    super.initState();
  }

  Future<void> getNewData() async {
    // showDialog(
    //     context: context,
    //     builder: (context) {
    //       return const Center(child: CircularProgressIndicator(),);
    //     });

        http.Response response = await http.get(Uri.parse(
        "https://ecommerce.salmanbediya.com/products/tag/new/getAll"));

        print(response.statusCode);
        print(response.body);
   
    try {
      if (response.statusCode == 200) {
        setState(() {
          GetNewData = Product.fromJson(jsonDecode(response.body));
        });
      }
    } 
    
    catch (e) {
      print(e);
    }
  }

  // void togglefavorite() {
  //   setState(() {
  //     widget.Product.isfavorited = !widget.Product.isfavorited;
  //     if (widget.product.isfavorited) {
  //       favorite.add(widget.product);
  //     } else {
  //       favorite.remove(widget.product);
  //     }
  //   });
  // }
  //--------------------------------------------------------
  // List images = [
  //   "assets/images/b1.jpg",
  //   "assets/images/b2.jpg",
  //   "assets/images/b3.jpg",
  //   "assets/images/b4.jpg",
  //   "assets/images/b5.jpg",
  //   "assets/images/b6.jpg",
  // ];
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E1F28),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 536,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/boy1.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.darken),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          width: 200,
                          height: 190,
                          child: Column(
                            children: [
                              Text(
                                "Fashion sale",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              // ),
                              SizedBox(
                                height: 10,
                              ),
                              CheckButton(
                                  margin: EdgeInsets.only(right: 35),
                                  name: "Check",
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeScreen2()));
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                      padding: const EdgeInsets.all(20.0),
                      width: double.infinity,
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
                              height: 8,
                            ),
                            Text(
                              "You’ve never seen it before!",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 360,
                              width: double.infinity,
                              child: GetNewData == null
                                  ? Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    )
                                  : ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      physics: ScrollPhysics(
                                          parent:
                                              AlwaysScrollableScrollPhysics()),
                                      itemCount: GetNewData.products!.length,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 15),
                                              width: 148,
                                              height: 184,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5)),
                                                  image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: NetworkImage(
                                                          "${GetNewData.products![index].image ?? Text(
                                                                "Loading",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodySmall,
                                                              )}"))),
                                              // child: Container(
                                              //   margin: const EdgeInsets.only(
                                              //       top: 150, left: 100),
                                              //   child: FloatingActionButton(
                                              //     backgroundColor:
                                              //         Color(0xff2A2C36),
                                              //     onPressed: () {
                                              //       setState(() {
                                              //         favorite = !favorite;
                                              //       });
                                              //     },
                                              //     child: Icon(
                                              //       favorite
                                              //           ? Icons.favorite
                                              //           : Icons
                                              //               .favorite_border,
                                              //       color: favorite
                                              //           ? Colors.red
                                              //           : Colors.grey,
                                              //       size: 24,
                                              //     ),
                                              //   ),
                                              // )
                                              // child: IconButton(
                                              //   icon: Icon(
                                              //     widget.product.isfavorited
                                              //         ? Icons.favorite
                                              //         : Icons.favorite_border,
                                              //     color:
                                              //         widget.product.isfavorited
                                              //             ? Colors.red
                                              //             : Colors.white,
                                              //   ),
                                              //   onPressed: togglefavorite,
                                              // )
// --------------------------------------------------------

                                              child: IconButton(
                                                padding: const EdgeInsets.only(
                                                    top: 144, left: 110),
                                                // alignment: Alignment.bottomRight,
                                                onPressed: () {
                                                  setState(() {
                                                    favorite = !favorite;
                                                  });
                                                },
                                                icon: CircleAvatar(
                                                  radius: 26,
                                                  backgroundColor:
                                                      Color(0xff2A2C36),
                                                  foregroundColor:
                                                      Color(0xffABB4BD),
                                                  child: Icon(
                                                    favorite
                                                        ? Icons.favorite
                                                        : Icons.favorite_border,
                                                    color: favorite
                                                        ? Colors.red
                                                        : Colors.grey,
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
                                                    itemPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.0),
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                      Icons.favorite,
                                                      color: Colors.amber,
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                )
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                              ],
                                            )
                                          ],
                                        );
                                      }),
                            )
                          ]))
                ])));
  }
}
