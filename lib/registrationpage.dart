// ignore_for_file: camel_case_types, unnecessary_const, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_db_signin/login_page.dart';
import 'package:velocity_x/velocity_x.dart';

class registrationPage extends StatefulWidget {
  const registrationPage({Key? key}) : super(key: key);

  @override
  _registrationPageState createState() => _registrationPageState();
}

class _registrationPageState extends State<registrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    image: const DecorationImage(
                        image:
                            const AssetImage("images/assets/backgroundUI.png"),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          child: SvgPicture.asset("images/assets/xing.svg")),
                      const HeightBox(10),
                      "Registration".text.color(Colors.white).size(20).make(),
                      const HeightBox(20),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'First Name',
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    const BorderSide(color: Colors.blue)),
                            isDense: true, // Added this
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 20, 10, 10),
                          ),
                          cursorColor: Colors.white,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const HeightBox(20),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Last Name',
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    const BorderSide(color: Colors.blue)),
                            isDense: true, // Added this
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 20, 10, 10),
                          ),
                          cursorColor: Colors.white,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const HeightBox(20),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    const BorderSide(color: Colors.blue)),
                            isDense: true, // Added this
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 20, 10, 10),
                          ),
                          cursorColor: Colors.white,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const HeightBox(20),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    const BorderSide(color: Colors.blue)),
                            isDense: true, // Added this
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 20, 10, 10),
                          ),
                          cursorColor: Colors.white,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const HeightBox(20),
                      GestureDetector(
                          onTap: () {},
                          child: "Sign-Up"
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
                      const HeightBox(140),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Login_Page()));
          },
          child: RichText(
              text: const TextSpan(
            text: 'New User?',
            style: const TextStyle(fontSize: 15.0, color: Colors.black),
            children: <TextSpan>[
              const TextSpan(
                text: ' Login Now',
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0XFF4321F5)),
              ),
            ],
          )).pLTRB(20, 0, 0, 15),
        ));
  }
}
