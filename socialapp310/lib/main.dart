import 'package:flutter/material.dart';
import 'package:socialapp310/routes/splashpage.dart';
import 'package:socialapp310/routes/login.dart';
import 'package:socialapp310/routes/walkthrough.dart';
import 'package:socialapp310/routes/welcome.dart';
import 'package:socialapp310/routes/signup.dart';
import 'package:socialapp310/routes/signupdone.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: {
    '/': (context) => SplashScreen(),
    '/walkthrough' : (context) => WalkThrough(),
    '/login': (context) => Login(),
    '/welcome': (context) => Welcome(),
    '/signup': (context) => SignUp(),
    '/signupdone': (context) => FinishSignupPage(),

  } ,
  // home: Login(),
  //initialRoute: '/login',
));
