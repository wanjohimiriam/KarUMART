// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:karumart/screens/homeScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  
  File? image;
  
  Future getImage(ImageSource source)async{
    final image = await ImagePicker().pickImage(source: source);
    if(image==null){
      return ;
    }
    final i_mage= File(image.path);
    setState(() {
      this.image= i_mage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Image(
                image: AssetImage('assets/llogoo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Center(
                      child: image == null?CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.grey,
                      ):CircleAvatar(
                        radius: 60,
                        backgroundImage: FileImage(image!),
                        ),
                    ),
                    Positioned(
                      top: 90,
                      left: 90,
                      right: 2,
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 83, 221, 186),
                        radius: 10,
                        child: GestureDetector(
                          onTap: (){
                            showDialog(                              
                              context: context, 
                              builder: (BuildContext) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical:MediaQuery.of(context).size.height * 0.35
                                    ),
                                  child: AlertDialog(
                                    title: Text("Pick Image"),
                              content: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        getImage(ImageSource.gallery);
                                      },
                                      child: Text("From gallery")),
                                    SizedBox(height: 10),
                                    GestureDetector(
                                      onTap: (){
                                        getImage(ImageSource.camera);
                                      },
                                      child: Text("From camera")),
                                      // SizedBox(height: 40,),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: GestureDetector(
                                          onTap: (() {
                                            Navigator.pop(context);
                                          }),
                                          child: Text("Close")))
                                  ],
                              ),
                              ),
                                );
                              }
                              );
                              //Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.add,
                            //Color.fromARGB(255, 83, 221, 186)
                            color: Color.fromARGB(255, 184, 233, 188),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10.0),
                  child: Container(
                    height: 50,

                    // gradient: ,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 184, 233, 188),
                            Color.fromARGB(255, 83, 221, 186)
                            // Color.fromARGB(255, 38, 136, 41),
                            // Color.fromARGB(255, 158, 216, 160),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              color: Colors.black12,
                              spreadRadius: 1,
                              offset: Offset(4, 4))
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        //hintText: 'E-mail',
                        label: Text('firstName'),
                        hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 184, 233, 188),
                            Color.fromARGB(255, 83, 221, 186)
                            // Color.fromARGB(255, 38, 136, 41),
                            // Color.fromARGB(255, 158, 216, 160),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.black12,
                              spreadRadius: 1,
                              offset: Offset(4, 4))
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        //hintText: 'E-mail',
                        label: Text('Lastname'),
                        hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 184, 233, 188),
                            Color.fromARGB(255, 83, 221, 186)
                            // Color.fromARGB(255, 38, 136, 41),
                            // Color.fromARGB(255, 158, 216, 160),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.black12,
                              spreadRadius: 1,
                              offset: Offset(4, 4))
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        //hintText: 'E-mail',
                        label: Text('PhoneNumber'),
                        hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 184, 233, 188),
                            Color.fromARGB(255, 83, 221, 186)
                            // Color.fromARGB(255, 38, 136, 41),
                            // Color.fromARGB(255, 158, 216, 160),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.black12,
                              spreadRadius: 1,
                              offset: Offset(4, 4))
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        //hintText: 'E-mail',
                        label: Text('E-mail'),
                        hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 184, 233, 188),
                            Color.fromARGB(255, 83, 221, 186)
                            // Color.fromARGB(255, 38, 136, 41),
                            // Color.fromARGB(255, 158, 216, 160),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.black12,
                              spreadRadius: 1,
                              offset: Offset(4, 4))
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        //hintText: 'E-mail',
                        label: Text('Password'),
                        hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 184, 233, 188),
                            Color.fromARGB(255, 83, 221, 186)
                            // Color.fromARGB(255, 38, 136, 41),
                            // Color.fromARGB(255, 158, 216, 160),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.black12,
                              spreadRadius: 1,
                              offset: Offset(4, 4))
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        //hintText: 'E-mail',
                        label: Text('Year of Study'),
                        hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 20.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 184, 233, 188),
                            Color.fromARGB(255, 83, 221, 186)
                            // Color.fromARGB(255, 38, 136, 41),
                            // Color.fromARGB(255, 158, 216, 160),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.black12,
                              spreadRadius: 1,
                              offset: Offset(4, 4))
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        //hintText: 'E-mail',
                        label: Text('Registration Number'),
                        hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ]),
      ),
      // appBar: AppBar(
      //   title: Text('Register'),
      // ),
    );
  }
}
