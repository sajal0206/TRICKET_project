// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_ui/login.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(
          background: Color.fromARGB(255, 29, 15, 121),
        ),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flex(direction: Axis.vertical, children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.7,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        AutoSizeText(
                          "T.",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 60,
                              fontFamily: "Calibri"),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: AutoSizeText(
                            "TRICKET",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 50,
                                fontFamily: "Calibri"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              Flex(
                direction: Axis.vertical,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black38,
                          offset: Offset(0, -20),
                          spreadRadius: 5,
                          blurRadius: 80,
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 5,
                            vertical: 10,
                          ),
                          child: RaisedButton(
                            elevation: 5,
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 15),
                            color: const Color.fromARGB(255, 59, 88, 152),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (Builder) => const login()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Icon(
                                    FontAwesomeIcons.facebookF,
                                    color: Colors.white,
                                  ),
                                ),
                                AutoSizeText(
                                  "Continue With Facebook",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  maxFontSize: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 5,
                            vertical: 10,
                          ),
                          child: RaisedButton(
                            elevation: 5,
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 15),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (Builder) => const login()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Icon(
                                    FontAwesomeIcons.google,
                                    color: Color.fromARGB(158, 61, 61, 61),
                                  ),
                                ),
                                AutoSizeText(
                                  "Login With Google",
                                  style: TextStyle(
                                    color: Color.fromARGB(158, 59, 59, 59),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxFontSize: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: const [
                              Expanded(
                                child: Divider(),
                              ),
                              AutoSizeText(
                                "or login with",
                                style: TextStyle(
                                  color: Color.fromARGB(158, 59, 59, 59),
                                  fontWeight: FontWeight.w300,
                                ),
                                maxFontSize: 20,
                              ),
                              Expanded(
                                child: Divider(),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 5),
                          child: Form(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: "Mobile Number",
                                hintText: "Enter your mobile number",
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 5,
                            vertical: 10,
                          ),
                          child: RaisedButton(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 15),
                            color: Color.fromARGB(255, 79, 135, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (Builder) => const login()),
                              );
                            },
                            child: const AutoSizeText(
                              "Log in",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                              maxFontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 5,
                            vertical: 10,
                          ),
                          child: RaisedButton(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 15),
                            color: Color.fromARGB(185, 221, 217, 217),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (Builder) => const login()),
                              );
                            },
                            child: const AutoSizeText(
                              "Skip For Now",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              maxFontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
