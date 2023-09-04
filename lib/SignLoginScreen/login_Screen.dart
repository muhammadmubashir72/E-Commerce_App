// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'dart:convert';

import 'package:e_commerce_app/SignLoginScreen/signup_Screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:e_commerce_app/widget/button.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'ImageScreen/visual_Screen.dart';
import 'forgot_Screen.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();

  void login(String email, String password) async {
    http.Response response = await http.put(
        Uri.parse('https://ecommerce.salmanbediya.com/users/login'),
        body: {'email': email, 'password': password});
    try {
      if (response.statusCode == 200) {
        emailController.clear();
        passwordController.clear();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => VisualScreen()));
      } else {
        emailController.clear();
        passwordController.clear();
      }
    } catch (e) {
      print(e);
    }
  }

  bool _obscureText = false;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E1F28),
        appBar: AppBar(
          backgroundColor: Color(0xff1E1F28),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => signup()));
            },
            icon: Icon(Icons.chevron_left),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 245),
                      child: Text(
                        "Login",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    TextFormField(
                      toolbarOptions: ToolbarOptions(
                          copy: true, cut: true, paste: true, selectAll: true),
                      maxLength: 30,
                      controller: emailController,
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
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          suffixIcon: Icon(
                            emailController.text.isEmpty
                                ? Icons.close
                                : Icons.check,
                            color: emailController.text.isEmpty
                                ? Colors.red
                                : Colors.green,
                          ),
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
                    TextFormField(
                      toolbarOptions: ToolbarOptions(
                          copy: true, cut: true, paste: true, selectAll: true),
                      maxLength: 15,
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      obscureText: _obscureText,
                      obscuringCharacter: "*",
                      style: Theme.of(context).textTheme.bodySmall,
                      cursorColor: Colors.white,
                      cursorHeight: 17,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'This field is required';
                        }
                        if (value.trim().length < 8) {
                          return 'Password must be at least 8 characters in length';
                        }
                        RegExp regex = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                        if (!regex.hasMatch(value)) {
                          return 'Enter valid password';
                        }

                        // r'^ -> (?=.*[A-Z])   should contain at least one upper case
                        //  (?=.*[a-z])        should contain at least one lower case
                        //  (?=.*?[0-9])       should contain at least one digit
                        //  (?=.*?[!@#\$&*~])  should contain at least one Special character
                        //  .{8,}              Must be at least 8 characters in length  $
                        // Return null if the entered password is valid
                        return null;
                      },
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey[600],
                              ),
                              onPressed: () {
                                setState(() {
                                  _toggle();
                                });
                              }),
                          fillColor: Color(0xff2A2C36),
                          filled: true,
                          contentPadding: EdgeInsets.all(25),
                          labelText: "Password",
                          labelStyle: Theme.of(context).textTheme.bodySmall,
                          hintText:
                              "Must be one Word Capital,Small,Specail and Number",
                          hintStyle: Theme.of(context).textTheme.bodySmall,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => forgot()));
                            },
                            child: Text(
                              "Forgot your password?",
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                        Icon(Icons.arrow_right_alt, color: Color(0xffEF3651)),
                      ],
                    ),
                    SizedBox(height: 30),
                    RoundedButton(
                        name: "Login",
                        onPressed: () {
                          setState(() {
                            if (_formKey.currentState!.validate()) {
                              login(emailController.text.toString(),
                                  passwordController.text.toString());

                              Fluttertoast.showToast(
                                  msg: "Login Successfully",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.green,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          });
                        }),
                    SizedBox(height: 213),
                    Text(
                      "Or sign up with social account",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(height: 10),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        width: 92,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VisualScreen()));
                            },
                            icon: Image.asset(
                              "assets/images/google.png",
                              width: 23.5,
                              height: 24,
                            )),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 92,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/facebook.png",
                              width: 23.5,
                              height: 24,
                            )),
                      )
                    ]),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
