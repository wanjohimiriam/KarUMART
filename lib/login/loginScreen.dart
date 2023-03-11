// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:karumart/login/registerScreen.dart';
import 'package:karumart/screens/homeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey();

  void register() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('user', ['$email.text', '$password.text']);
  }

  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            Container(
                height: 200,
                color: Colors.white,
                child: Center(
                  child: Image(
                    image: AssetImage("assets/logoreal2.png"),
                  ),
                )),
            Container(
              child: Form(
                key: formkey,
                child: Column(children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 20.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.black12,
                                spreadRadius: 1,
                                offset: Offset(4, 4))
                          ]),
                      child: TextFormField(
                        controller: email,
                        validator: (value) {
                          return (value!.isEmpty) ? 'Input Field Required' : null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          //hintText: 'E-mail',
                          label: Text('@email'),
                          hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.black12,
                                spreadRadius: 1,
                                offset: Offset(4, 4))
                          ]),
                      child: TextFormField(
                        controller: password,
                        validator: (value) {
                          return (value!.isEmpty) ? 'Input Field Required' : null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          //hintText: 'Password',
                          label: Text('password'),
                          hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300),
                    child: TextButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          register();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('OR', style: TextStyle(color: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: Text(
                        'Create Account',
                        style: TextStyle(color: Colors.green.shade400),
                      ))
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
