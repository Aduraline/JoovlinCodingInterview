import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/util/constant.dart';
import 'package:todo/view/widget/button.dart';

class CreateTaskActivity extends StatefulWidget {
  static const String id = 'CreateTaskActivity';
  const CreateTaskActivity({Key? key}) : super(key: key);

  @override
  CreateTaskActivityState createState() => CreateTaskActivityState();
}

class CreateTaskActivityState extends State<CreateTaskActivity> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double sWidth = MediaQuery.of(context).size.width - 36;

    return Scaffold(
      backgroundColor: Colors.white,
      // extendBody: true,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: true,
            title: Text('Create Task',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'CircularStd')),
            backgroundColor: colorPurple,
          ),
          SliverPadding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                const Text("Title",
                    style: TextStyle(
                        color: colorDeepGray,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400)),
                const SizedBox(height: 7),
                Container(
                    height: 48.0,
                    width: sWidth,
                    decoration: BoxDecoration(
                      color: colorLighterGray,
                      border: Border.all(color: colorLighterGray),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0)),
                    ),
                    child: Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 0, bottom: 0),
                        child: TextField(
                          controller: titleController,
                          obscureText: false,
                          cursorColor: Colors.transparent,
                          cursorWidth: 0,
                          style: const TextStyle(
                            color: colorDeepGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'What do you want to do?'),
                          keyboardType: TextInputType.text,
                        ))),
                const SizedBox(height: 15),
                const Text("Description",
                    style: TextStyle(
                        color: colorDeepGray,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400)),
                const SizedBox(height: 7),
                Container(
                    height: 100,
                    width: sWidth,
                    decoration: BoxDecoration(
                      color: colorLighterGray,
                      border: Border.all(color: colorLighterGray),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0)),
                    ),
                    child: Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 0, bottom: 0),
                        child: TextField(
                          controller: descController,
                          obscureText: false,
                          minLines: 1,
                          maxLines: 5,
                          cursorColor: Colors.transparent,
                          cursorWidth: 0,
                          style: const TextStyle(
                            color: colorDeepGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Describe your task'),
                          keyboardType: TextInputType.text,
                        ))),
                const SizedBox(height: 25),
                Button(
                  colour: colorPurple,
                  onClick: () {},
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ])))
        ],
      )
    );
  }
}
