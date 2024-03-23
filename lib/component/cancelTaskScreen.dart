import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmenager/component/taskList.dart';

import '../api/apiClient.dart';

class cancelTaskScreen extends StatefulWidget {
  const cancelTaskScreen({super.key});

  @override
  State<cancelTaskScreen> createState() => _cancelTaskScreenState();
}

class _cancelTaskScreenState extends State<cancelTaskScreen> {
  List TaskItems = [];
  bool Loading = false;

  void initState(){
    CallData();
    super.initState();
  }

  CallData() async {

    var data = await TaskListRequest("Canceled");
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
