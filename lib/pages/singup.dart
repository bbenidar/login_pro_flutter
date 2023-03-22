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
                  child: Image.asset(
                    "assets/signup.png",
                    width: 200,
                    height: 300,
                  ),
                ),
              ),
              Container(
                // padding: EdgeInsets.symmetric(vertical: 200),
                margin: EdgeInsets.only(top: 350),
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
                margin: EdgeInsets.only(top: 290),
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
                margin: EdgeInsets.only(top: 410),
                // padding: EdgeInsets.symmetric(vertical: 200),

                width: double.infinity,

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
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("dont have an account ? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 280,
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              height: 9,
                              thickness: 1,
                              color: Colors.purple[900],
                            ),
                          ),
                          Text(
                            "OR",
                            style: TextStyle(color: Colors.purple[900]),
                          ),
                          Expanded(
                            child: Divider(
                              height: 9,
                              thickness: 1,
                              color: Colors.purple[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xffa511fb), width: 1)),
                            child: Positioned.fill(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Image.asset(
                                  "assets/twitter.png",
                                  width: 33,
                                  height: 33,
                                  color: Color(0xffa511fb),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xffa511fb), width: 1)),
                            child: Positioned.fill(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Image.asset(
                                  "assets/facebook.png",
                                  width: 33,
                                  height: 33,
                                  color: Color(0xffa511fb),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xffa511fb), width: 1)),
                            child: Positioned.fill(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Image.asset(
                                  "assets/google-plus.png",
                                  width: 33,
                                  height: 33,
                                  color: Color(0xffa511fb),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
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
