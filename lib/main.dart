import 'package:flutter/material.dart';
import 'package:taskmenager/screen/onboarding/emailVerificationScreen.dart';
import 'package:taskmenager/screen/onboarding/loginScreen.dart';
import 'package:taskmenager/screen/onboarding/pinVerificationScreen.dart';
import 'package:taskmenager/screen/onboarding/registrationScreen.dart';
import 'package:taskmenager/screen/onboarding/setPasswordScreen.dart';
import 'package:taskmenager/screen/onboarding/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task Menager",
      initialRoute: '/pinVerification',
      routes: {
        '/':(context)=>splashScreen(),
        '/login':(context)=>loginScreen(),
        '/pinVerification':(context)=>pinVerificationScreen(),
        '/registration':(context)=>registrationScreen(),
        '/emailVerificationScreen':(context)=>emailVerificationScreen(),
        '/setPassword':(context)=>setPasswordScreen()

      },


    );
  }
}



