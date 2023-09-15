import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginScreen.dart';
import 'package:flutter_application_1/SplashScreen.dart';
import 'package:flutter_application_1/home_Screen.dart';
//import 'package:flutter_application_1/signup.dart';
import 'package:flutter_application_1/NotificationView.dart';
// import 'package:flutter_application_1/BottomNavigation.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )
        ),
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const home_Screen(),
    );
  }
}