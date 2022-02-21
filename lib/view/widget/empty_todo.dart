import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo/util/constant.dart';

class NoTodo extends StatelessWidget {
  const NoTodo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text("Todo List is empty",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'CircularStd')),
          SizedBox(height: 5),
          Text("Create a task",
              style: TextStyle(
                  color: textColorGray,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'CircularStd'))
        ],
      ),
    );
  }
}
