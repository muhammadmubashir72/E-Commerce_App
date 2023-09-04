// ignore_for_file: file_names, prefer_const_constructors

import 'package:e_commerce_app/bottomScreen/favoriteScreen/RatingReviewsScreen.dart';
import 'package:e_commerce_app/widget/button.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List images = [
    "assets/images/b1.jpg",
    "assets/images/b2.jpg",
    "assets/images/b3.jpg",
    "assets/images/b4.jpg",
    "assets/images/b5.jpg",
    "assets/images/b6.jpg",
  ];
  String? _SelectedSize;
  String? _SelectedColour;
  List<String> _ListSize = [
    "XS",
    "S",
    "M",
    "L",
    "XL",
  ];
  List<String> _ListColor = [
    "Red   ",
    "Orange",
    "Yellow",
    "Green ",
    "Blue  ",
    "Purple",
    "Pink  ",
    "Brown ",
    "Black ",
    "Gray  ",
    "White ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      appBar: AppBar(
        backgroundColor: Color(0xff1E1F28),
        title: Text(
          "Short dress",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: Icon(Icons.chevron_left),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
            icon: Icon(Icons.share),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20),
              height: 450,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Image.asset(images[index],
                          width: 275, height: 413, fit: BoxFit.fitHeight),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: 138,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xff1E1F28),
                      border: Border.all(color: Color(0xffABB4BD))),
                  child: DropdownButton(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    menuMaxHeight: 200,
                    isExpanded: true,
                    style: Theme.of(context).textTheme.bodyMedium,
                    hint: Text("Size",
                        style: Theme.of(context).textTheme.bodyMedium),
                    dropdownColor: Colors.grey[800],
                    value: _SelectedSize,
                    onChanged: (newValue) {
                      setState(() {
                        _SelectedSize = newValue!;
                      });
                    },
                    items: _ListSize.map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: 138,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xff1E1F28),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: Color(0xffABB4BD))),
                  child: DropdownButton(
                    menuMaxHeight: 250,
                    isExpanded: true,
                    style: Theme.of(context).textTheme.bodyMedium,
                    hint: Text("Color",
                        style: Theme.of(context).textTheme.bodyMedium),
                    dropdownColor: Colors.grey[800],
                    value: _SelectedSize,
                    onChanged: (newValue) {
                      setState(() {
                        _SelectedSize = newValue!;
                      });
                    },
                    items: _ListColor.map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: Color(0xff1E1F28),
                    child: Icon(
                      Icons.favorite_border,
                      color: Color(0xffABB4BD),
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "H&M",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        "19.99",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  child: Text(
                    "Short black dress",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  child: Row(
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
                        Icons.star_rate,
                        color: Color(0xffFFBA49),
                        size: 13,
                      ),
                      Text(
                        "10",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  child: Text(
                    "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: RoundedButton(name: "ADD TO CART", onPressed: () {}),
                ),
                Divider(
                  color: Color(0xffABB4BD),
                  thickness: 0.5,
                ),
                ListTile(
                  title: Text(
                    "Shipping info",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Color(0xffABB4BD),
                  thickness: 0.5,
                ),
                ListTile(
                  title: Text(
                    "Support",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Color(0xffABB4BD),
                  thickness: 0.5,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RatingReviewScreen()));
                  },
                  title: Text(
                    "Rate info",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Color(0xffABB4BD),
                  thickness: 0.5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "You can also like this",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "12 items",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 300,
                  child: ListView.builder(
                      physics: ScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              width: 148,
                              height: 184,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  image: DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage(
                                        images[index],
                                      )
                                      // NetworkImage(
                                      //     "https://tse1.mm.bing.net/th?id=OIP.6WdYwGaG8XZCeXdRbeb4FgHaLK&pid=Api&P=0&h=180")
                                      )),
                              child: IconButton(
                                padding:
                                    const EdgeInsets.only(top: 144, left: 110),
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
                                  Icons.star_rate,
                                  color: Color(0xffFFBA49),
                                  size: 13,
                                ),
                                Text(
                                  "10",
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Dorothy Perkins",
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            Text(
                              "Evening Dress",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Row(
                              children: [
                                Text(
                                  "15D",
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
                                Text(
                                  "12D",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Metropolis',
                                    color: Color(0xffFF3E3E),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
