// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'CategoriesScreen.dart';

class ShopScreen3 extends StatefulWidget {  
  const ShopScreen3({super.key});

  @override
  State<ShopScreen3> createState() => _ShopScreen3State();
}

class _ShopScreen3State extends State<ShopScreen3> {
  void initState() {
    getCateory();
    super.initState();
  }

  Future<void> getCateory() async {
    http.Response response = await http.get(Uri.parse(
        "https://ecommerce.salmanbediya.com/products/category/getAll"));
    print(response.statusCode);
    print(response.body);
  }

  List images = [
    "assets/images/cloth1.jpg",
    "assets/images/b1.jpg",
    "assets/images/b2.jpg",
    "assets/images/b3.jpg",
    "assets/images/b4.jpg",
    "assets/images/b5.jpg",
    "assets/images/b6.jpg",
  ];
  
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
  List<String> _listName = [
    "T-shirts",
    "Crop tops",
    "Sleeveless",
    "Shirts",
  ];
  List<String> _bottomlist = [
    "Popular",
    "Newest",
    "Customer review",
    "Price: lowest to high",
    "Price: highest to low",
  ];
  // Category _category = Category(sections);
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
                  MaterialPageRoute(builder: (context) => ShopScreen()));
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
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Outerwear",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _listName.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: BorderRadius.all(Radius.circular(29))),
                      child: Center(
                        child: Text(
                          _listName[index].toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => _showBottomSheet(),
                  icon: Icon(Icons.swap_vert),
                  color: Colors.white,
                  iconSize: 18,
                ),
                Text(
                  "Price: lowest to high",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff2A2C36).withOpacity(0.8),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            images[index],
                            // "https://tse1.mm.bing.net/th?id=OIP.OAcS4g1uN8BHUz6bopQt3gHaGJ&pid=Api&P=0&h=180",
                            width: 104,
                            height: 104,
                            fit: BoxFit.fitHeight,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 7,
                              ),
                              Text("Pullover"),
                              SizedBox(
                                height: 7,
                              ),
                              Text("Mango"),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star_rate,
                                    color: Color(0xffFFBA49),
                                    size: 13,
                                  ),
                                  Icon(
                                    Icons.star_rate,
                                    color: Color(0xffFFBA49),
                                    size: 13,
                                  ),
                                  Icon(
                                    Icons.star_rate,
                                    color: Color(0xffFFBA49),
                                    size: 13,
                                  ),
                                  Icon(
                                    Icons.star_rate,
                                    color: Color(0xffFFBA49),
                                    size: 13,
                                  ),
                                  Icon(
                                    Icons.star_rate_outlined,
                                    // color: Color(0xffFFBA49),
                                    size: 13,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "10",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("51"),
                            ],
                          ),
                          IconButton(
                            padding: EdgeInsets.only(
                              top: 60,
                              left: 115,
                            ),
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
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  _showBottomSheet() {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(34), topRight: Radius.circular(34))),
        backgroundColor: Color(0xff2A2C36),
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Sort by",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: ListView.builder(
                    itemCount: _bottomlist.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: _bottomlist[index] == "Price: lowest to high"
                            ? Color(0xffEF3651)
                            : Color(0xff2A2C36),
                        title: Text(
                          _bottomlist[index].toString(),
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      );
                    }),
              )
            ],
          );
        });
  }
}
