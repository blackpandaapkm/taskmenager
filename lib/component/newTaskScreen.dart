import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmenager/api/apiClient.dart';
import 'package:taskmenager/component/taskList.dart';

class newTaskScreen extends StatefulWidget {
  const newTaskScreen({super.key});

  @override
  State<newTaskScreen> createState() => _newTaskScreenState();
}

class _newTaskScreenState extends State<newTaskScreen> {

  List TaskItems = [];
  bool Loading = false;

  void initState(){
    CallData();
    super.initState();
  }

  CallData() async {

    var data = await TaskListRequest("New");
    setState(() {
      Loading = false;
      TaskItems = data;
    });
  }





  @override
  Widget build(BuildContext context) {
    return Loading?(Center(child: CircularProgressIndicator())):RefreshIndicator(
        onRefresh: () async {
          await CallData();
        },
      child: taskList(TaskItems)

    );
  }
}
