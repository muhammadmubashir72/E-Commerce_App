// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '../../widget/button.dart';

TextEditingController countryController = TextEditingController();

class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({super.key});

  @override
  State<ShippingAddressScreen> createState() => _ShippingScreeAddressnState();
}

class _ShippingScreeAddressnState extends State<ShippingAddressScreen> {
  String? _SelectedCountry;
  bool isDropdownOpen = false;
  List<String> _ListCountryName = [
    "Afghanistan	              ",
    "lbania                    ",
    "lgeria	                   ",
    "ndorra	                   ",
    "ngola	                    ",
    "Barbuda                   ",
    "rgentina                  ",
    "rmenia	                   ",
    "ustralia                  ",
    "Austria	                  ",
    "Azerbaijan                ",
    "Bahamas	                  ",
    "Bahrain	                  ",
    "Bangladesh	               ",
    "Barbados	                 ",
    "Belarus	                  ",
    "Belgium	                  ",
    "Belize	                   ",
    "Benin	                    ",
    "Bhutan	                   ",
    "Bolivia	                  ",
    "Herzegovina	              ",
    "Botswana	                 ",
    "Brazil	                   ",
    "Brunei	                   ",
    "Bulgaria                  ",
    "Cambodia	                 ",
    "Cameroon	                 ",
    "Canada	                   ",
    "Central                   ",
    "Chad	                     ",
    "Chile	                    ",
    "China	                    ",
    "Egypt                     ",
    "Finland	                  ",
    "France	                   ",
    "Gabon	                    ",
    "Gambia                    ",
    "Georgia                   ",
    "Germany                   ",
    "Ghana	                    ",
    "Greece	                   ",
    "Grenada	                  ",
    "Guatemala	                ",
    "Guinea	                   ",
    "Guinea-Bissau	            ",
    "Guyana                    ",
    "Haiti	                    ",
    "Iceland	                  ",
    "India	                    ",
    "Indonesia	                ",
    "Iran	                     ",
    "Iraq	                     ",
    "Ireland                   ",
    "Israel	                   ",
    "Italy	                    ",
    "Jamaica	                  ",
    "Japan	                    ",
    "Jordan	                   ",
    "Kazakhstan                ",
    "Kenya	                    ",
    "Kiribati                  ",
    "Kuwait	                   ",
    "Kyrgyzstan                ",
    "Laos	                     ",
    "Latvia	                   ",
    "Lebanon	                  ",
    "Lesotho	                  ",
    "Liberia	                  ",
    "Libya	                    ",
    "Liechtenstein	            ",
    "Lithuania	                ",
    "Luxembourg  	             ",
    "Madagascar	               ",
    "Malawi	                   ",
    "Malaysia	                 ",
    "Maldives	                 ",
    "Mali	                     ",
    "Malta	                    ",
    "Marshall Islands          ",
    "Mauritania	               ",
    "Mauritius	                ",
    "Mexico	                   ",
    "Micronesia	               ",
    "Moldova	                  ",
    "Monaco	                   ",
    "Mongolia	                 ",
    "Montenegro                ",
    "Morocco	                  ",
    "Mozambique                ",
    "Myanmar                   ",
    "Namibia	                  ",
    "Nauru	                    ",
    "Nepal	                    ",
    "Netherlands	              ",
    "New Zealand	              ",
    "Nicaragua	                ",
    "Niger	                    ",
    "Nigeria	                  ",
    "North Korea	              ",
    "North Macedonia	          ",
    "Norway	                   ",
    "Oman                      ",
    "Pakistan      	           ",
    "Palau	                    ",
    "Palestine State	          ",
    "Panama	                   ",
    "Papua New Guinea	         ",
    "Paraguay                  ",
    "Peru                      ",
    "Philippines	              ",
    "Poland    	               ",
    "Portugal	                 ",
    "Qatar   	                 ",
    "Romania	                  ",
    "Russia	                   ",
    "Rwanda	                   ",
    "Saint                     ",
    "Saint                     ",
    "Saint                     ",
    "Samoa	                    ",
    "Senegal	                  ",
    "Serbia	                   ",
    "Seychelles	               ",
    "Sierra                    ",
    "Singapore	                ",
    "Slovakia	                 ",
    "Slovenia	                 ",
    "Solomon                   ",
    "Somalia	                  ",
    "South Africa              ",
    "South Korea	              ",
    "South Sudan	              ",
    "Spain	                    ",
    "Sri Lanka	                ",
    "Sudan	                    ",
    "Suriname	                 ",
    "Sweden	                   ",
    "Switzerland	              ",
    "Syria	                    ",
    "Tajikistan	               ",
    "Tanzania                  ",
    "Thailand	                 ",
    "Timor-Leste	              ",
    "Togo	                     ",
    "Tonga	                    ",
    "Trinidad	                 ",
    "Tunisia	                  ",
    "Turkey	                   ",
    "Turkmenistan	             ",
    "Tuvalu	                   ",
    "Ukraine	                  ",
    "Uganda	                   ",
    "United Arab Emirates	     ",
    "United Kingdom            ",
    "United States of America  ",
    "Uruguay	                  ",
    "Uzbekistan	               ",
    "Vanuatu	                  ",
    "Venezuela                 ",
    "Vietnam	                  ",
    "Yemen	                    ",
    "Zambia	                   ",
    "Zimbabwe",
  ];

  void toggleDropdown() {
    setState(() {
      isDropdownOpen = !isDropdownOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      appBar: AppBar(
        backgroundColor: Color(0xff1E1F28),
        title: Text(
          "Adding Shipping Address",
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
      ),
      body: Column(children: [
        Form(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLength: 30,
                  cursorHeight: 17,
                  cursorColor: Colors.white10,
                  keyboardType: TextInputType.name,
                  // controller: nameController,
                  style: Theme.of(context).textTheme.bodySmall,
                  autofocus: true,
                  onChanged: (Value) {
                    setState(() {
                      // _namee = Value;
                    });
                  },
                  decoration: InputDecoration(
                      fillColor: Color(0xff2A2C36),
                      filled: true,
                      contentPadding: EdgeInsets.all(25),
                      labelText: "Full name",
                      labelStyle: Theme.of(context).textTheme.headlineSmall,
                      hintText: "Enter Your Name",
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
                  // controller: nameController,
                  style: Theme.of(context).textTheme.bodySmall,
                  autofocus: true,
                  onChanged: (Value) {
                    setState(() {
                      // _namee = Value;
                    });
                  },

                  decoration: InputDecoration(
                      fillColor: Color(0xff2A2C36),
                      filled: true,
                      contentPadding: EdgeInsets.all(25),
                      labelText: "Address",
                      labelStyle: Theme.of(context).textTheme.headlineSmall,
                      hintText: "3 Newbridge Court ",
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
                  // controller: nameController,
                  style: Theme.of(context).textTheme.bodySmall,
                  autofocus: true,
                  onChanged: (Value) {
                    setState(() {
                      // _namee = Value;
                    });
                  },
                  decoration: InputDecoration(
                      fillColor: Color(0xff2A2C36),
                      filled: true,
                      contentPadding: EdgeInsets.all(25),
                      labelText: "City",
                      labelStyle: Theme.of(context).textTheme.headlineSmall,
                      hintText: "Chino Hills",
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2A2C36))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2A2C36)))),
                ),
                SizedBox(height: 10),
                TextFormField(
                  maxLength: 30,
                  cursorHeight: 17,
                  cursorColor: Colors.white10,
                  keyboardType: TextInputType.name,
                  // controller: nameController,
                  style: Theme.of(context).textTheme.bodySmall,
                  autofocus: true,
                  onChanged: (Value) {
                    setState(() {
                      // _namee = Value;
                    });
                  },
                  decoration: InputDecoration(
                      fillColor: Color(0xff2A2C36),
                      filled: true,
                      contentPadding: EdgeInsets.all(25),
                      labelText: "State/Province/Region",
                      labelStyle: Theme.of(context).textTheme.headlineSmall,
                      hintText: "California",
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2A2C36))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2A2C36)))),
                ),
                SizedBox(height: 10),
                TextFormField(
                  maxLength: 30,
                  cursorHeight: 17,
                  cursorColor: Colors.white10,
                  keyboardType: TextInputType.name,
                  // controller: nameController,
                  style: Theme.of(context).textTheme.bodySmall,
                  autofocus: true,
                  onChanged: (Value) {
                    setState(() {
                      // _namee = Value;
                    });
                  },
                  decoration: InputDecoration(
                      fillColor: Color(0xff2A2C36),
                      filled: true,
                      contentPadding: EdgeInsets.all(25),
                      labelText: "Zip Code (Postal Code)",
                      labelStyle: Theme.of(context).textTheme.headlineSmall,
                      hintText: "91709",
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2A2C36))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2A2C36)))),
                ),
                SizedBox(height: 10),
                TextFormField(
                  maxLength: 30,
                  cursorHeight: 17,
                  cursorColor: Colors.white10,
                  keyboardType: TextInputType.name,
                  // controller: nameController,
                  style: Theme.of(context).textTheme.bodySmall,
                  autofocus: true,
                  onChanged: (Value) {
                    setState(() {
                      // _namee = Value;
                    });
                  },
                  controller: countryController,
                  readOnly: true,
                  decoration: InputDecoration(
                      suffix: IconButton(
                          onPressed: () {
                            toggleDropdown();
                          },
                          icon: Icon(Icons.chevron_right, color: Colors.white)),
                      fillColor: Color(0xff2A2C36),
                      filled: true,
                      contentPadding: EdgeInsets.all(25),
                      labelText: "Country",
                      labelStyle: Theme.of(context).textTheme.headlineSmall,
                      hintText: "United States",
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2A2C36))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2A2C36)))),
                ),
                if (isDropdownOpen)
                  Container(
                    child: DropdownButton<String>(
                      menuMaxHeight: 150,
                      style: Theme.of(context).textTheme.bodySmall,
                      hint: Text("Select Country",
                          style: Theme.of(context).textTheme.bodySmall),
                      icon: Icon(Icons.chevron_right, color: Colors.white),
                      dropdownColor: Colors.grey[800],
                      value: _SelectedCountry,
                      onChanged: (newValue) {
                        setState(() {
                          _SelectedCountry = newValue!;
                          countryController.text = _SelectedCountry.toString();
                        });
                      },
                      items: _ListCountryName.map<DropdownMenuItem<String>>(
                          (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                SizedBox(
                  height: 30,
                ),
                RoundedButton(
                    name: "SAVE ADDRESS",
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          ),
        )
      ]),
    );
  }
}
