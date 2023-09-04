import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FavoriteListScreen extends StatefulWidget {
  const FavoriteListScreen({super.key});

  @override
  State<FavoriteListScreen> createState() => _FavoriteListScreenState();
}

class _FavoriteListScreenState extends State<FavoriteListScreen> {
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
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Favorites",
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
                  onPressed: () {},
                  // showBottomSheet(),
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
            Container(
              height: 600,
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("LIMEr"),
                                  Icon(Icons.close, color: Color(0xffABB4BD))
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("Shirt"),
                              SizedBox(
                                height: 7,
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
                                    Text("Units",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("1",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium)
                                  ]),
                                  Row(children: [
                                    SizedBox(
                                      width: 170,
                                    ),
                                    Text("51",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium),
                                  ])
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "32 ",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
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
                                        color: Color(0xffFFBA49),
                                        size: 13,
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        "10",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                      FloatingActionButton(
                                        backgroundColor: Color(0xffEF3651),
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.badge,
                                          color: Color(0xffEF3651),
                                          size: 24,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
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
}
