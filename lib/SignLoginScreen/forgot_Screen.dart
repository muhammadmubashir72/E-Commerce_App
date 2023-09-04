// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:e_commerce_app/widget/button.dart';
import 'package:flutter/material.dart';

import 'login_Screen.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class forgot extends StatefulWidget {
  const forgot({super.key});

  @override
  State<forgot> createState() => _forgotState();
}

class _forgotState extends State<forgot> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E1F28),
        appBar: AppBar(
          backgroundColor: Color(0xff1E1F28),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => login()));
            },
            icon: Icon(Icons.chevron_left),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 79),
                    child: Text(
                      "Forgot password",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 70),
                  Text(
                    "Please, enter your email address. You will receive a link to create a new password via email.",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 30),
                  Form(
                    key: _formKey,
                    child: TextFormField(
                      toolbarOptions: ToolbarOptions(
                          copy: true, cut: true, paste: true, selectAll: true),
                      maxLength: 30,
                      // controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: Theme.of(context).textTheme.bodySmall,
                      cursorHeight: 17,
                      cursorColor: Colors.white,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your email address';
                        }
                        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          fillColor: Color(0xff2A2C36),
                          filled: true,
                          contentPadding: EdgeInsets.all(25),
                          labelText: "Email",
                          labelStyle: Theme.of(context).textTheme.bodySmall,
                          hintText: "xyz@gmail.com",
                          hintStyle: Theme.of(context).textTheme.bodyMedium,
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            borderSide: BorderSide(color: Colors.red, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff2A2C36))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xff2A2C36)))),
                    ),
                  ),
                  SizedBox(height: 41),
                  RoundedButton(
                      name: "Send",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pop(context);
                        }
                      }),
                ],
              ),
            )
          ],
        ));
  }
}
