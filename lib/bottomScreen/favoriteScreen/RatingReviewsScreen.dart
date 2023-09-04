import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../widget/button.dart';

class RatingReviewScreen extends StatefulWidget {
  const RatingReviewScreen({super.key});

  @override
  State<RatingReviewScreen> createState() => _RatingReviewScreenState();
}

class _RatingReviewScreenState extends State<RatingReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E1F28),
      appBar: AppBar(
          backgroundColor: const Color(0xff1E1F28),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
            icon: const Icon(Icons.chevron_left),
          )),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Rating&Reviews",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "4.3",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "23 ratings",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "8 reviews",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              width: 327,
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xff2A2C36),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const AvatarView(
                    //   avatarType: AvatarType.CIRCLE,
                    //   imagePath: "assets/images/b1.jpg",
                    //   radius: 25,
                    // ),

                    Text(
                      "Helene Moore",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          const Icon(
                            Icons.star_rate,
                            color: Color(0xffFFBA49),
                            size: 13,
                          ),
                          const Icon(
                            Icons.star_rate,
                            color: Color(0xffFFBA49),
                            size: 13,
                          ),
                          const Icon(
                            Icons.star_rate,
                            color: Color(0xffFFBA49),
                            size: 13,
                          ),
                          const Icon(
                            Icons.star_rate,
                            color: Color(0xffFFBA49),
                            size: 13,
                          ),
                          const Icon(
                            Icons.star_rate_outlined,
                            color: Color(0xffABB4BD),
                            size: 13,
                          ),
                        ]),
                        Row(children: [
                          Text(
                            "June 5, 2019",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ])
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7 and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Helpful",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.thumb_up,
                          color: Color(0xffDADADA),
                          size: 13,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 170,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 20.0),
                    width: 160,
                    height: 36,
                    decoration: const BoxDecoration(
                        color: Color(0xffEF3651),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.rate_review_sharp,
                          color: Colors.white,
                        ),
                        TextButton(
                            onPressed: () => _showBottomSheet(),
                            child: Text("Write a review",
                                style: Theme.of(context).textTheme.bodyMedium)),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _showBottomSheet() {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34), topRight: Radius.circular(34))),
        backgroundColor: const Color(0xff1E1F28),
        context: context,
        builder: (context) {
          return Form(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "What is you rate?",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    // width: 150,
                    child: RatingBar.builder(
                      initialRating: 2,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 36,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star_border_outlined,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Please share your opinion about the product",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 327,
                    height: 146,
                    decoration: const BoxDecoration(color: Color(0xff2A2C36)),
                    child: Text(
                      "Your review",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  RoundedButton(
                      name: "SEND REVIEW",
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
