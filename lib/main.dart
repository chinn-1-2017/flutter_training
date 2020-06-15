import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gradient_text/gradient_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final background = BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [Colors.deepOrangeAccent, Colors.pinkAccent]));

    final logoImage = Image.asset("assets/images/logo.png", scale: 2.5);
    final emailField = TextField(
      obscureText: false,
      decoration: InputDecoration(
          enabledBorder: new UnderlineInputBorder(
              borderSide: new BorderSide(color: Colors.white)),
          contentPadding: EdgeInsets.fromLTRB(0, 15, 20, 15),
          hintText: "Enter Email",
          hintStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300)),
    );

    final passwordField = TextField(
      obscureText: true,
      decoration: InputDecoration(
          enabledBorder: new UnderlineInputBorder(
              borderSide: new BorderSide(color: Colors.white)),
          contentPadding: EdgeInsets.fromLTRB(0, 15, 20, 15),
          hintText: "Password",
          hintStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300)),
    );

    final loginButon = Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(60),
        color: Colors.white,
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          onPressed: () {},
          child: GradientText(
            "Get Stared".toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            gradient: LinearGradient(colors: [
              Colors.pink,
              Colors.deepOrange,
            ]),
          ),
        ));

    final iconFb = CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage('assets/images/fb.png'),
      backgroundColor: Colors.white,
    );

    final iconBird = CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage('assets/images/bird.png'),
      backgroundColor: Colors.white,
    );

    final forgetText = Text(
      "Forget password?".toUpperCase(),
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline),
    );

    final rememberPasswordCheckBox = Checkbox(
      value: true,
      onChanged: (bool value) {},
    );

    final rememberPasswordText = Text(
      "Remember Password",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 13, color: Colors.white, fontWeight: FontWeight.bold),
    );

    final dontHaveAccountText = Text(
      "don't have any account? ".toUpperCase(),
      style: TextStyle(color: Colors.orangeAccent),
    );

    final descriptionText = Text(
      "Find and Meet people around you to find Love",
      style: TextStyle(color: Colors.white),
      textAlign: TextAlign.center,
    );

    final signUpText = Text("Sign up".toUpperCase(),
        style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid));
    return Scaffold(
        body: Center(
      child: Container(
          decoration: background,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Column(
                  children: <Widget>[
                    logoImage,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "conn".toUpperCase(),
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                              color: Colors.pink),
                        ),
                        Text(
                          "exion".toUpperCase(),
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Container(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
                          child: descriptionText),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "sign in".toUpperCase(),
                      style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    emailField,
                    SizedBox(height: 25),
                    passwordField,
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        rememberPasswordCheckBox,
                        rememberPasswordText
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: loginButon,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        iconFb,
                        SizedBox(width: 50),
                        iconBird,
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    forgetText,
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                      child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 00),
                    child: Container(
                      height: 100,
                      color: Colors.black12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [dontHaveAccountText, signUpText],
                      ),
                    ),
                  )),
                ),
              ),
            ],
          )),
    ));
  }
}
