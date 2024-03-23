import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmenager/component/taskList.dart';

import '../api/apiClient.dart';

class completedTaskScreen extends StatefulWidget {
  const completedTaskScreen({super.key});

  @override
  State<completedTaskScreen> createState() => _completedTaskScreenState();
}

class _completedTaskScreenState extends State<completedTaskScreen> {
  List TaskItems = [];
  bool Loading = false;

  void initState(){
    CallData();
    super.initState();
  }

  CallData() async {

    var data = await TaskListRequest("Completed");
    setState(() {
      Loading = false;
      TaskItems = data;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Loading
        ? (Center(child: CircularProgressIndicator()))
        : RefreshIndicator(
      onRefresh: () async {
        await CallData();
      },
        child: taskList(TaskItems)

    );
  }
}
