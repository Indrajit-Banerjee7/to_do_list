import 'package:flutter/material.dart';
import 'package:to_do_list/addscreen.dart';
import 'package:to_do_list/changing_part.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ToDoAppState();
  }
}

class _ToDoAppState extends State<ToDoApp> {


 Widget? activesccreen ;

  @override
  void initState() {
   activesccreen = ChangingPart(onTapAdd);
    super.initState();
  }

 void onTapAdd(){
  setState(() {
    activesccreen = AddScreen() ;  //////////////////////
  });
 }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Color.fromARGB(255, 226, 155, 239),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(child: activesccreen),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
