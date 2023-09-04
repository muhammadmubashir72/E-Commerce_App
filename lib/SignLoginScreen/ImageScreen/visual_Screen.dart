
// ignore_for_file: prefer_const_constructors, unused_element, non_constant_identifier_names, unused_local_variable, use_build_context_synchronously, unnecessary_this, avoid_print, curly_braces_in_flow_control_structures
import 'dart:io';

import 'package:e_commerce_app/SignLoginScreen/ImageScreen/visualFinding_Screen.dart';
import 'package:e_commerce_app/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../login_Screen.dart';

class VisualScreen extends StatefulWidget {
  const VisualScreen({super.key});

  @override
  State<VisualScreen> createState() => _VisualScreenState();
}

class _VisualScreenState extends State<VisualScreen> {
  @override
  File? PickedImage;

  Future pickImageFromgellery(ImageSource Source) async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: Source);
    print(image?.name);
    print(image?.path);
    if (image == null) {
      setState(() {
        image = image!;
      });
    }
    if (this.mounted) {
      await Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VisualizedImageScreen(
                imagepick: PickedImage!,
              )));
    }
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
                context, MaterialPageRoute(builder: (context) => login()));
          },
          icon: Icon(Icons.chevron_left),
        ),
        title: Text(
          "Visual search",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken),
                fit: BoxFit.fitHeight,
                image: AssetImage(
                  "assets/images/boy.jpg",
                ))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 430),
              Text(
                "Search for an outfit by taking a photo or uploading an image",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 25),
              RoundedButton(
                  name: "TAKE A PHOTO",
                  onPressed: () {
                    setState(() {
                      pickImageFromgellery(ImageSource.camera);
                    });
                  }),
              SizedBox(height: 20),
              uploadButton(
                  name: "UPLOAD AN IMAGE",
                  onPressed: () {
                    setState(() {
                      pickImageFromgellery(ImageSource.gallery);
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}



    //   final imageTemp = File(image.path);
    //   setState(() => this.PickedImage = imageTemp);
    // } on PlatformException catch (e) {
    //   print('Failed to pick image: $e');
  //           }
  // }

  // Future pickImageFromCamera() async {
  //   try {
  //     final image = await ImagePicker().pickImage(source: ImageSource.camera);
  //     if (image == null)
  //       return;
  //     else {
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => VisualizedImageScreen()));
  //     }
  //     final imageTemp = File(image.path);
  //     setState(() => this.PickedImage = imageTemp);
  //   } on PlatformException catch (e) {
  //     print('Failed to pick image: $e');
  //   }
  // }



// Myyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy

// // ignore_for_file: prefer_const_constructors, unused_element, non_constant_identifier_names, unused_local_variable, use_build_context_synchronously, unnecessary_this, avoid_print, curly_braces_in_flow_control_structures
// import 'dart:io';

// import 'package:e_commerce_app/SignLoginScreen/ImageScreen/visualFinding_Screen.dart';
// import 'package:e_commerce_app/widget/button.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';

// import '../login_Screen.dart';

// class VisualScreen extends StatefulWidget {
//   const VisualScreen({super.key});

//   @override
//   State<VisualScreen> createState() => _VisualScreenState();
// }

// class _VisualScreenState extends State<VisualScreen> {
//   @override

//   File? PickedImage;

//   Future pickImageFromgellery() async {
//     try {
//       final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//       if (image == null)
//         return;
//       else {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => VisualizedImageScreen()));
//       }
//       final imageTemp = File(image.path);
//       setState(() => this.PickedImage = imageTemp);
//     } on PlatformException catch (e) {
//       print('Failed to pick image: $e');
//     }
//   }

//   Future pickImageFromCamera() async {
//     try {
//       final image = await ImagePicker().pickImage(source: ImageSource.camera);
//       if (image == null)
//         return;
//       else {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => VisualizedImageScreen()));
//       }
//       final imageTemp = File(image.path);
//       setState(() => this.PickedImage = imageTemp);
//     } on PlatformException catch (e) {
//       print('Failed to pick image: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff1E1F28),
//       appBar: AppBar(
//         backgroundColor: Color(0xff1E1F28),
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(
//                 context, MaterialPageRoute(builder: (context) => login()));
//           },
//           icon: Icon(Icons.chevron_left),
//         ),
//         title: Text(
//           "Visual search",
//           style: Theme.of(context).textTheme.titleSmall,
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 colorFilter: ColorFilter.mode(
//                     Colors.black.withOpacity(0.3), BlendMode.darken),
//                 fit: BoxFit.fitHeight,
//                 image: AssetImage(
//                   "assets/images/boy.jpg",
//                 ))),
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               SizedBox(height: 430),
//               Text(
//                 "Search for an outfit by taking a photo or uploading an image",
//                 style: Theme.of(context).textTheme.titleMedium,
//               ),
//               SizedBox(height: 25),
//               RoundedButton(
//                   name: "TAKE A PHOTO",
//                   onPressed: () {
//                     pickImageFromCamera();
//                   }),
//               SizedBox(height: 20),
//               uploadButton(
//                   name: "UPLOAD AN IMAGE",
//                   onPressed: () {
//                     pickImageFromgellery();
//                   }),
//               SizedBox(height: 95),
//               Container(
//                 alignment: Alignment.center,
//                 width: 134,
//                 height: 5,
//                 color: Color(0xffFFFFFF),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
