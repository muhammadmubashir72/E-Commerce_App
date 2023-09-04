
// ignore_for_file: unused_import, prefer_const_constructors

import 'dart:async';
import 'dart:io';
import 'package:e_commerce_app/SignLoginScreen/ImageScreen/visual_Screen.dart';
import 'package:e_commerce_app/NavScreen/NavBarScreen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class VisualizedImageScreen extends StatefulWidget {
  
  final File? imagepick;
  const VisualizedImageScreen({super.key, this.imagepick});

  @override
  State<VisualizedImageScreen> createState() => _VisualizedImageScreenState();
}

class _VisualizedImageScreenState extends State<VisualizedImageScreen> {
  File? image;

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => navigationScreen()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      appBar: AppBar(
        backgroundColor: Color(0xff1E1F28),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 133,
              ),
              if (image != null)
                Image.file(
                  widget.imagepick!,
                  height: 250,
                  width: 400,
                )
              else

              Image.network(
                "https://www.wallpapers13.com/wp-content/uploads/2019/07/Sunrise-landscape-photography-early-morning-swamp-evaporation-streaming-sky-Download-4k-wallpaper-images-for-your-desktop-background.jpg",
                height: 250,
                width: 400,
              ),
              Icon(
                Icons.search,
                color: Color(0xffEF3651),
                size: 45.18,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text(
                  "Finding similar results...",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//Myyyyyyyyyyyyyyyyyyyyyyyyyyyy
// // ignore_for_file: unused_import, prefer_const_constructors


// import 'dart:async';
// import 'dart:io';
// import 'package:e_commerce_app/SignLoginScreen/ImageScreen/visual_Screen.dart';
// import 'package:e_commerce_app/NavScreen/NavBarScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class VisualizedImageScreen extends StatefulWidget {
//   const VisualizedImageScreen({super.key});

//   @override
//   State<VisualizedImageScreen> createState() => _VisualizedImageScreenState();
// }

// class _VisualizedImageScreenState extends State<VisualizedImageScreen> {
//   @override
//   void initState() {
//     Timer(Duration(seconds: 3), () {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => navigationScreen()));
//     });
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff1E1F28),
//       appBar: AppBar(
//         backgroundColor: Color(0xff1E1F28),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(25.0),
//         child: Center(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 133,
//               ),
//               Image.network(
//                 "assets/images/dummy.jpg",
//                 width: 260,
//                 height: 400,
//               ),
//               Icon(
//                 Icons.search,
//                 color: Color(0xffEF3651),
//                 size: 45.18,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 70),
//                 child: Text(
//                   "Finding similar results...",
//                   style: Theme.of(context).textTheme.bodyLarge,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
