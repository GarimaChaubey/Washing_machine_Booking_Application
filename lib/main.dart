
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_page/first.dart';
import 'package:login_page/home.dart';
import 'package:login_page/login.dart';
import 'package:login_page/register.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyFirst(),
    routes: {
      'first': (context)=> MyFirst(),
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'home': (context) =>  MyHome()
    },
  ));
}