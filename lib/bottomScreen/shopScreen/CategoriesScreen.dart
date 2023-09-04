// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:e_commerce_app/models/productClass.dart';
import 'package:e_commerce_app/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../models/categoryClass.dart';
import '../homeScreen/FashionSaleScreen.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  Category1 category = Category1();
  Product GetProductsData = Product();

  void initState() {
    getCategoryData();
    // TODO: implement initState
    super.initState();
  }

  void getCategoryData() async {
    http.Response response = await http.get(Uri.parse(
        "https://ecommerce.salmanbediya.com/products/category/getAll"));
    print(response.statusCode);
    print(response.body);
    try {
      if (response.statusCode == 200) {
        setState(() {
          category = Category1.fromJson(jsonDecode(response.body));
          print(response.statusCode);
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void getNewData() async {
    http.Response response = await http
        .get(Uri.parse("https://ecommerce.salmanbediya.com/products/getAll"));

    print(response.statusCode);
    print(response.body);
    try {
      if (response.statusCode == 200) {
        setState(() {
          GetProductsData = Product.fromJson(jsonDecode(response.body));
          // loadedPhotos = Sale.fromJson(jsonDecode(response.body)) as List;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  List<String> ListTiles = [
    "Tops",
    "Shirts & Blouses",
    "Cardigans & Sweaters",
    "Knitwear",
    "Outerwear",
    "Pants",
    "Jeans",
    "Shorts",
    "Skirts",
    "Dresses",
  ];
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
                setState(() {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedButton(
                name: "VIEW ALL ITEMS",
                onPressed: () {},
                margin: EdgeInsets.symmetric(horizontal: 20)),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Choose category",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: category == null
                  ? Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    )
                  : ListView.builder(
                      itemCount: category.categories!.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 40),
                              child: ListTile(
                                onTap: () {
                                  setState(() {
                                    Text(
                                        "${GetProductsData.products![index].category}");
                                  });
                                },
                                title: Text(
                                  "${category.categories![index].name}",
                                  // ListTiles[index].toString(),
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xffABB4BD),
                            )
                          ],
                        );
                      }),
            )
          ],
        ));
  }

  
}
