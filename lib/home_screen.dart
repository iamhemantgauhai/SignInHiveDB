// // ignore_for_file: must_be_immutable, deprecated_member_use
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hive_db_signin/home_controller.dart';
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: LoginScreen(),
//     );
//   }
// }
//
// class LoginScreen extends StatelessWidget {
//   TextEditingController email = TextEditingController();
//   TextEditingController pass = TextEditingController();
//   final controller = Get.put(HomeController());
//
//   LoginScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Login Page"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
//             child: TextField(
//               onChanged: (text) {
//                 controller.checktext(text);
//               },
//               controller: email,
//               decoration: InputDecoration(
//                 hintText: 'Email | PhoneNo | Username',
//                 hintStyle: const TextStyle(color: Colors.grey),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                   borderSide: const BorderSide(color: Colors.green, width: 2.0),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                   borderSide:
//                       const BorderSide(color: Colors.greenAccent, width: 2.0),
//                 ),
//                 isDense: true,
//                 contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
//               ),
//               cursorColor: Colors.black,
//               style: const TextStyle(color: Colors.black),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           GetBuilder<HomeController>(
//             builder: (_) {
//               return _.which == 1
//                   ? Container()
//                   : Padding(
//                       padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
//                       child: TextField(
//                         obscureText: true,
//                         controller: pass,
//                         decoration: InputDecoration(
//                           hintText: 'Password',
//                           hintStyle: const TextStyle(color: Colors.grey),
//                           enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                             borderSide: const BorderSide(
//                                 color: Colors.green, width: 2.0),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                             borderSide: const BorderSide(
//                                 color: Colors.greenAccent, width: 2.0),
//                           ),
//                           isDense: true, // Added this
//                           contentPadding:
//                               const EdgeInsets.fromLTRB(10, 20, 10, 10),
//                         ),
//                         cursorColor: Colors.black,
//                         style: const TextStyle(color: Colors.black),
//                       ),
//                     );
//             },
//           ),
//           RaisedButton(
//             color: Colors.blue,
//             onPressed: () {
//               // call login method
//               controller.login();
//             },
//             child: const Text("LOGIN"),
//           ),
//         ],
//       ),
//     );
//   }
// }
