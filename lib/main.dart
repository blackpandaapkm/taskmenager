import 'package:flutter/material.dart';
import 'package:taskmenager/screen/onboarding/emailVerificationScreen.dart';
import 'package:taskmenager/screen/onboarding/loginScreen.dart';
import 'package:taskmenager/screen/onboarding/pinVerificationScreen.dart';
import 'package:taskmenager/screen/onboarding/registrationScreen.dart';
import 'package:taskmenager/screen/onboarding/setPasswordScreen.dart';
import 'package:taskmenager/screen/onboarding/splashScreen.dart';
import 'package:taskmenager/screen/task/newTaskListScreen.dart';
import 'package:taskmenager/utility/utility.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? token = await ReadUserData('token');
  if (token == null) {
    runApp(MyApp('/login'));
  }
  else {
    runApp(MyApp('/login'));
  }
}
class MyApp extends StatelessWidget {
  final String FirstRoute;
  MyApp(this.FirstRoute);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task Menager",
      initialRoute: FirstRoute,
      routes: {
        '/':(context)=>splashScreen(),
        '/login':(context)=>loginScreen(),
        '/pinVerification':(context)=>pinVerificationScreen(),
        '/registration':(context)=>registrationScreen(),
        '/emailVerificationScreen':(context)=>emailVerificationScreen(),
        '/setPassword':(context)=>setPasswordScreen(),
        '/newTaskListScreen':(context)=>newTaskListScreen()

      },


    );
  }
}



