import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                height: 80,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "L9OR3A",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            // fontStyle: FontStyle.,
                            fontSize: 25,
                            color: Color(0xff43265f)),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Image.asset("assets/main_top.png", width: 111),
              ),
              Container(
                child: Positioned(
                  bottom: 0,
                  child: Image.asset("assets/main_bottom.png", width: 111),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Image.asset(
                      "assets/chat.png",
                      width: 250,
                      height: 400,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 480),
                // padding: EdgeInsets.symmetric(vertical: 200),

                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Container(
                        width: 120,
                        height: 40,
                        child: Center(
                            child: Text(
                          "Log in",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )),
                      ),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffebc6ff))),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 420),
                // padding: EdgeInsets.symmetric(vertical: 200),

                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Container(
                        width: 120,
                        height: 40,
                        child: Center(
                            child: Text(
                          "sign up",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        )),
                      ),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffa511fb))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
