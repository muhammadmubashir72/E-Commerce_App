import 'package:e_commerce_app/bottomScreen/profileScreen/profileScreen.dart';
import 'package:e_commerce_app/widget/button.dart';
import 'package:flutter/material.dart';

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String? _namee;
  bool _switchValue1 = true;
  bool _switchValue2 = false;
  bool _switchValue3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      appBar: AppBar(
          backgroundColor: Color(0xff1E1F28),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Personal Information",
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
              controller: nameController,
              style: Theme.of(context).textTheme.bodySmall,
              autofocus: true,
              onChanged: (Value) {
                setState(() {
                  _namee = Value;
                });
              },
              decoration: InputDecoration(
                  fillColor: Color(0xff2A2C36),
                  filled: true,
                  contentPadding: EdgeInsets.all(25),
                  labelText: "Full Name",
                  labelStyle: Theme.of(context).textTheme.headlineSmall,
                  hintText: "Enter Your Name",
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff2A2C36))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff2A2C36)))),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              maxLength: 30,
              cursorHeight: 17,
              cursorColor: Colors.white10,
              keyboardType: TextInputType.name,
              controller: nameController,
              style: Theme.of(context).textTheme.bodySmall,
              autofocus: true,
              onChanged: (Value) {
                setState(() {
                  _namee = Value;
                });
              },
              decoration: InputDecoration(
                  fillColor: Color(0xff2A2C36),
                  filled: true,
                  contentPadding: EdgeInsets.all(25),
                  labelText: "Date of Birth",
                  labelStyle: Theme.of(context).textTheme.headlineSmall,
                  hintText: "12/12/1989",
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff2A2C36))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff2A2C36)))),
            ),
            SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Password",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              TextButton(
                onPressed: () {},
                child: TextButton(
                  onPressed: () => _showBottomSheet(),
                  child: Text(
                    "Change",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              maxLength: 30,
              cursorHeight: 17,
              cursorColor: Colors.white10,
              keyboardType: TextInputType.name,
              controller: nameController,
              style: Theme.of(context).textTheme.bodySmall,
              autofocus: true,
              onChanged: (Value) {
                setState(() {
                  _namee = Value;
                });
              },
              decoration: InputDecoration(
                  fillColor: Color(0xff2A2C36),
                  filled: true,
                  contentPadding: EdgeInsets.all(25),
                  labelText: "Password",
                  labelStyle: Theme.of(context).textTheme.headlineSmall,
                  hintText: "****************",
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff2A2C36))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff2A2C36)))),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Notifications",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sales",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Switch(
                    trackColor: MaterialStatePropertyAll(Color(0xff14151B)),
                    activeColor: Color(0xff55D85A),
                    activeTrackColor: Color(0xff14151B),
                    inactiveTrackColor: Color(0xffABB4BD),
                    inactiveThumbColor: Color(0xffABB4BD),
                    // splashRadius: 60,
                    value: _switchValue1,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        _switchValue1 = value;
                      });
                    })
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New arrivals",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Switch(
                    trackColor: MaterialStatePropertyAll(Color(0xff14151B)),
                    activeColor: Color(0xff55D85A),
                    activeTrackColor: Color(0xff14151B),
                    inactiveTrackColor: Color(0xffABB4BD),
                    inactiveThumbColor: Color(0xffABB4BD),
                    value: _switchValue2,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        _switchValue2 = value;
                      });
                    })
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery status changes",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Switch(
                    trackColor: MaterialStatePropertyAll(Color(0xff14151B)),
                    activeColor: Color(0xff55D85A),
                    activeTrackColor: Color(0xff14151B),
                    inactiveTrackColor: Color(0xffABB4BD),
                    inactiveThumbColor: Color(0xffABB4BD),
                    value: _switchValue3,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        _switchValue3 = value;
                      });
                    })
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
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34), topRight: Radius.circular(34))),
        backgroundColor: Color(0xff1E1F28),
        context: context,
        builder: (context) {
          return Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Password Change",
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
                  controller: nameController,
                  style: Theme.of(context).textTheme.bodySmall,
                  autofocus: true,
                  onChanged: (Value) {
                    setState(() {
                      _namee = Value;
                    });
                  },
                  decoration: InputDecoration(
                      fillColor: Color(0xff2A2C36),
                      filled: true,
                      contentPadding: EdgeInsets.all(25),
                      labelText: "Old Password",
                      labelStyle: Theme.of(context).textTheme.headlineSmall,
                      hintText: "********",
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2A2C36))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2A2C36)))),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forgot password?",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLength: 30,
                  cursorHeight: 17,
                  cursorColor: Colors.white10,
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  style: Theme.of(context).textTheme.bodySmall,
                  autofocus: true,
                  onChanged: (Value) {
                    setState(() {
                      _namee = Value;
                    });
                  },
                  decoration: InputDecoration(
                      fillColor: Color(0xff2A2C36),
                      filled: true,
                      contentPadding: EdgeInsets.all(25),
                      labelText: "New Password",
                      labelStyle: Theme.of(context).textTheme.headlineSmall,
                      hintText: "********",
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
                  controller: nameController,
                  style: Theme.of(context).textTheme.bodySmall,
                  autofocus: true,
                  onChanged: (Value) {
                    setState(() {
                      _namee = Value;
                    });
                  },
                  decoration: InputDecoration(
                      fillColor: Color(0xff2A2C36),
                      filled: true,
                      contentPadding: EdgeInsets.all(25),
                      labelText: "Repeat New Password",
                      labelStyle: Theme.of(context).textTheme.headlineSmall,
                      hintText: "********",
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2A2C36))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2A2C36)))),
                ),
                SizedBox(
                  height: 16,
                ),
                RoundedButton(name: "SAVE PASSWORD", onPressed: () {})
              ],
            ),
          );
        });
  }
}
