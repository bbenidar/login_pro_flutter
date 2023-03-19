import 'package:clickcounter/main.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
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
                height: 50,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "LOG IN",
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
                  right: 0,
                  child: Image.asset("assets/login_bottom.png", width: 111),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Image.asset(
                      "assets/login.png",
                      width: 250,
                      height: 400,
                    ),
                  ),
                ),
              ),
              Container(
                // padding: EdgeInsets.symmetric(vertical: 200),
                margin: EdgeInsets.only(top: 480),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Color(0xffedcbff),
                          borderRadius: BorderRadius.circular(20)),
                      width: 266,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password :",
                          icon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 420),
                // padding: EdgeInsets.symmetric(vertical: 200),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Color(0xffedcbff),
                          borderRadius: BorderRadius.circular(20)),
                      width: 266,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email :",
                          icon: Icon(Icons.person),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 540),
                // padding: EdgeInsets.symmetric(vertical: 200),

                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Container(
                        width: 120,
                        height: 40,
                        child: Center(
                            child: Text(
                          "Log in",
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
