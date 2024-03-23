import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmenager/component/cancelTaskScreen.dart';
import 'package:taskmenager/component/taskAppBar.dart';

import '../../component/appBottomNav.dart';
import '../../component/completedTaskScreen.dart';
import '../../component/newTaskScreen.dart';
import '../../component/progressTaskScreen.dart';
import '../../utility/utility.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  int TabIndex=0;
  Map<String,String> ProfileData = {"email":"","firstName":"","lastName":"","photo": defaultImage};
  ReadAppBareData() async {

    String? email = await ReadUserData('email');
    String? firstName = await ReadUserData('firstName');
    String? lastName = await ReadUserData('lastName');
    String? photo = await ReadUserData('photo');



    setState(() {
      ProfileData = {"email":'$email',"firstName":'$firstName',"lastName":'$lastName',"photo":'$defaultImage'};
    });

  }

  @override
  void initState(){
    ReadAppBareData();

    super.initState();
  }


  onItemTapped(int index){
    setState(() {
      TabIndex = index;
    });
  }

  final widgetOptions=[
    newTaskScreen(),
    progressTaskScreen(),
    completedTaskScreen(),
    cancelTaskScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: taskAppBar(context,ProfileData),
      body: widgetOptions.elementAt(TabIndex),
      bottomNavigationBar: appBottomNav(TabIndex,onItemTapped),
    );
  }


}
