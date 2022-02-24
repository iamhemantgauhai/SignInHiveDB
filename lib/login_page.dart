// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hive_db_signin/home_controller.dart';
//
// class LoginPage extends StatelessWidget {
//   final controller = Get.put(HomeController());
//
//   LoginPage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             Center(
//               child: Text("""Welcome User"""),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// ignore_for_file: avoid_print, camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:hive_db_signin/registrationpage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  bool isChecked = false;

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  late Box box1;

  @override
  void initState() {
    super.initState();
    createBox();
  }

  void createBox() async {
    box1 = await Hive.openBox("loginData");
    getData();
  }

  void getData() async {
    if (box1.get('email') != null) {
      email.text = box1.get('email');
      isChecked = true;
      setState(() {});
    }
    if (box1.get('pass') != null) {
      pass.text = box1.get('pass');
      isChecked = true;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/assets/backgroundUI.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("images/assets/appscrip.jpg")),
                  const HeightBox(10),
                  "Login".text.color(Colors.grey).size(20).make(),
                  const HeightBox(20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.green),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                const BorderSide(color: Colors.greenAccent)),
                        isDense: true,
                        // Added this
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 20, 10, 10),
                      ),
                      cursorColor: Colors.grey,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                  const HeightBox(20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextField(
                      controller: pass,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.green),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                const BorderSide(color: Colors.greenAccent)),
                        isDense: true,
                        // Added this
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 20, 10, 10),
                      ),
                      cursorColor: Colors.grey,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Remember Me",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          isChecked = !isChecked;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Forgot Password ? Reset Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const HeightBox(10),
                  GestureDetector(
                      onTap: () {
                        print("Login Clicked Event");
                        login();
                      },
                      child: "Login"
                          .text
                          .white
                          .light
                          .xl
                          .makeCentered()
                          .box
                          .white
                          .shadowOutline(outlineColor: Colors.grey)
                          .color(const Color(0XFFFF0772))
                          .roundedLg
                          .make()
                          .w(150)
                          .h(40)),
                  const HeightBox(20),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const registrationPage()));
        },
        child: RichText(
          text: const TextSpan(
            text: 'New User?',
            style: TextStyle(fontSize: 15.0, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: ' Register Now',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0XFF4321F5)),
              ),
            ],
          ),
        ).pLTRB(20, 0, 0, 15),
      ),
    );
  }

  void login() {
    if (isChecked) {
      box1.put('email', email.text);
      box1.put('pass', pass.text);
    }
  }
}
