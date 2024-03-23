import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmenager/component/taskList.dart';

import '../api/apiClient.dart';

class progressTaskScreen extends StatefulWidget {
  const progressTaskScreen({super.key});

  @override
  State<progressTaskScreen> createState() => _progressTaskScreenState();
}

class _progressTaskScreenState extends State<progressTaskScreen> {
  List TaskItems = [];
  bool Loading = false;

  void initState(){
    CallData();
    super.initState();
  }

  CallData() async {

    var data = await TaskListRequest("Progress");
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
