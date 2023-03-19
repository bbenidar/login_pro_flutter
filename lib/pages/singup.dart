import 'package:flutter/material.dart';

class Singup extends StatelessWidget {
  const Singup({Key? key}) : super(key: key);
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
                        "SIGN UP",
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
                child: Image.asset("assets/signup_top.png", width: 111),
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
                      "assets/signup.png",
                      width: 200,
                      height: 400,
                    ),
                  ),
                ),
              ),
              Container(
                // padding: EdgeInsets.symmetric(vertical: 200),
                margin: EdgeInsets.only(top: 500),
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
                margin: EdgeInsets.only(top: 440),
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
                          icon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 380),
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
                          hintText: "Username :",
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
                margin: EdgeInsets.only(top: 560),
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
                          "Sign up",
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
