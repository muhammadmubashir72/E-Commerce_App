// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:e_commerce_app/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'login_Screen.dart';

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  Future<void> postdata(String name, String email, String password) async {
    try {
      http.Response response = await http.post(
          Uri.parse("https://ecommerce.salmanbediya.com/users/register"),
          body: {"name": name, "email": email, "password": password});

      if (response.statusCode == 200) {
        print(response.body);
        print(response.statusCode);
        print("Account Created Successfully!");
      } else {
        print("Failed to Signin");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  final _formKey = GlobalKey<FormState>();

  String _userName = '';
  String _userEmail = '';
  String _password = '';
  bool _obscureText = true;

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
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 219),
                    child: Text(
                      "Sign up",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          toolbarOptions: ToolbarOptions(
                              copy: true,
                              cut: true,
                              paste: true,
                              selectAll: true),
                          maxLength: 30,
                          cursorHeight: 17,
                          cursorColor: Colors.white10,
                          keyboardType: TextInputType.name,
                          controller: nameController,
                          style: Theme.of(context).textTheme.bodySmall,
                          autofocus: true,
                          onChanged: (Value) {
                            setState(() {
                              _userName = Value;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (value.trim().length < 4) {
                              return 'Username must be at least 4 characters in length';
                            }

                            // Return null if the entered username is valid
                            return null;
                          },
                          decoration: InputDecoration(
                              fillColor: Color(0xff2A2C36),
                              filled: true,
                              contentPadding: EdgeInsets.all(25),
                              labelText: "Name",
                              labelStyle: Theme.of(context).textTheme.bodySmall,
                              hintText: "Enter Your Name",
                              hintStyle: Theme.of(context).textTheme.bodyMedium,
                              suffixIcon: Icon(
                                nameController.text.isEmpty
                                    ? Icons.close
                                    : Icons.check,
                                color: nameController.text.isEmpty
                                    ? Colors.red
                                    : Colors.green,
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff2A2C36))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff2A2C36)))),
                        ),
                        TextFormField(
                          toolbarOptions: ToolbarOptions(
                              copy: true,
                              cut: true,
                              paste: true,
                              selectAll: true),
                          maxLength: 30,
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          style: Theme.of(context).textTheme.bodySmall,
                          cursorHeight: 17,
                          cursorColor: Colors.white,
                          onChanged: (Value) {
                            setState(() {
                              _userEmail = Value;
                            });
                          },
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff2A2C36))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff2A2C36)))),
                        ),
                        TextFormField(
                          toolbarOptions: ToolbarOptions(
                              copy: true,
                              cut: true,
                              paste: true,
                              selectAll: true),
                          maxLength: 15,
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: _obscureText,
                          obscuringCharacter: "*",
                          style: Theme.of(context).textTheme.bodySmall,
                          cursorColor: Colors.white,
                          cursorHeight: 17,
                          onChanged: (Value) {
                            setState(() {
                              _password = Value;
                            });
                          },
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff2A2C36))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff2A2C36)))),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => login()));
                          },
                          child: Text(
                            "Already have an account?",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )),
                      Icon(Icons.arrow_right_alt, color: Color(0xffEF3651)),
                    ],
                  ),
                  SizedBox(height: 30),
                  RoundedButton(
                      name: "Sign up",
                      onPressed: () {
                        setState(() {
                          if (_formKey.currentState!.validate()) {
                            postdata(
                                nameController.text.toString(),
                                emailController.text.toString(),
                                passwordController.text.toString());
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => login()));
                          }
                        });
                      }),
                  SizedBox(height: 133),
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
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      child: IconButton(
                          onPressed: () {},
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
                          borderRadius: BorderRadius.all(Radius.circular(24))),
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
            )
          ],
        ));
  }
}
