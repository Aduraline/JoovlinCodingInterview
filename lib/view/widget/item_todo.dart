import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo/util/constant.dart';

class TodoItem extends StatefulWidget {
  final String counter;

  const TodoItem({Key? key, required this.counter}) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => {},
        child: ListTile(
          leading: Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: (isChecked) ? colorLightGreen : colorLightYellow,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Text(widget.counter,
                    style: TextStyle(
                        color: (isChecked) ? colorGreen : colorYellow,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center)),
          ),
          title: Text("Meeting with John",
              style: TextStyle(
                  color: colorDeepGray,
                  fontSize: 14.0,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w400,
                  decoration: (isChecked) ? TextDecoration.lineThrough : TextDecoration.none),
              textAlign: TextAlign.left),
          subtitle: Text("Meet with john to discuss list of requirements",
              style: TextStyle(
                  color: colorLightGray,
                  fontSize: 12.0,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w400,
                  decoration: (isChecked) ? TextDecoration.lineThrough : TextDecoration.none),
              textAlign: TextAlign.left),
          trailing: Checkbox(
            value: isChecked,
            activeColor: colorGreen,
            side: const BorderSide(color: colorGray),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6.0))),
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ));
  }
}
