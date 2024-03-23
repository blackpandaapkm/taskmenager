


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmenager/style/style.dart';

ListView taskList(TaskItems){

  return ListView.builder(
    itemCount: TaskItems.length,
    itemBuilder: (context,index) {
      return Card(
        child: ItemSizeBox(
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TaskItems[index]["title"],style: Head6Text(colorDarkBlue),),
              Text(TaskItems[index]["description"],style: Head7Text(colorDarkBlue),),


            ],
          )
        )
      );
    },
  );
}