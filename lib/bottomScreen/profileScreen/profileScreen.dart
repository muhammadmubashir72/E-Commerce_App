// ignore_for_file: prefer_const_constructors

import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';

import 'OrderScreen.dart';
import 'SettingScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> _titleList = [
    "My orders",
    "Shipping addresses",
    "Payment methods",
    "Promocodes",
    "My reviews",
    "Settings",
  ];
  List<String> _SubtitleList = [
    "Already have 12 orders",
    "3 ddresses",
    "Visa  **34",
    "You have special promocodes",
    "Reviews for 4 items",
    "Notifications, password",
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "My profile",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      AvatarView(
                        radius: 40,
                        borderWidth: 8,
                        borderColor: Color.fromARGB(255, 65, 5, 5),
                        avatarType: AvatarType.CIRCLE,
                        backgroundColor: Colors.red,
                        imagePath: "assets/images/mubashir.jpg",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mubashir Saeedi",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Text(
                            "mubashirkhi72@gmail.com",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(),
                  itemCount: _titleList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          onTap: () {
                            if (_titleList[index] == "My orders") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OrderScreen()));
                            } else if (_titleList[index] == "Settings") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SettingScreen()));
                            }
                          },
                          title: Text(
                            _titleList[index],
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          subtitle: Text(
                            _SubtitleList[index],
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          trailing: Icon(Icons.chevron_right, size: 24),
                        ),
                        Divider(
                          thickness: 0.8,
                          color: Color(0xffABB4BD),
                        )
                      ],
                    );
                  }),
            ),
          ],
        ));
  }
}
