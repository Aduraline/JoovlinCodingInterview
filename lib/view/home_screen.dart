import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:todo/util/constant.dart';
import 'package:todo/view/widget/empty_todo.dart';
import 'package:todo/view/widget/item_todo.dart';

class HomeActivity extends StatefulWidget {
  static const String id = 'HomeActivity';
  const HomeActivity({Key? key}) : super(key: key);

  @override
  HomeActivityState createState() => HomeActivityState();
}

class HomeActivityState extends State<HomeActivity> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // extendBody: true,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            title: Text('Todo List',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'CircularStd')),
            backgroundColor: colorPurple,
          ),

          // const SliverFillRemaining(
          //   hasScrollBody: false,
          //     child: Center(
          //         child: Padding(
          //   padding: EdgeInsets.symmetric(vertical: 80),
          //   child: NoTodo(),
          // ))),

          SliverList(
              delegate: SliverChildListDelegate([
              for (var i=1; i <= 7; i++) TodoItem(counter: "$i")
          ]))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorPurple,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
