import 'package:flutter/material.dart';

import '../../style/style.dart';

class registrationScreen extends StatefulWidget {
  const registrationScreen({super.key});

  @override
  State<registrationScreen> createState() => _registrationScreenState();
}

class _registrationScreenState extends State<registrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Join With Us ",style: Head1Text(colorDarkBlue),),
                    SizedBox(height: 1),
                    TextFormField(decoration: AppInputDecoration("Email "),),
                    SizedBox(height: 20),
                    TextFormField(decoration: AppInputDecoration("First Name"),),
                    SizedBox(height: 20),
                    TextFormField(decoration: AppInputDecoration("Last Name"),),
                    SizedBox(height: 20),
                    TextFormField(decoration: AppInputDecoration("Mobile"),),
                    SizedBox(height: 20),
                    TextFormField(decoration: AppInputDecoration("Password"),),
                    SizedBox(height: 20),
                    TextFormField(decoration: AppInputDecoration("Confirm Password"),),
                    SizedBox(height: 20),
                    Container(child: ElevatedButton(
                      style: AppButtonStyle(),
                      child: SuccessButtonChild('Registration'),
                      onPressed: (){},
                    ),),
                  ],
                )
            ),
          )
        ],
      ),
    );
  }
}
