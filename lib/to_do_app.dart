import 'package:flutter/material.dart';
import 'package:to_do_list/changing_part.dart';
import 'package:to_do_list/data/data_array.dart';

class ToDoApp extends StatelessWidget{
  const ToDoApp({super.key});
  @override
  Widget build(BuildContext context) {
    
    return(
      MaterialApp(
        home: Scaffold(
          body: Container(decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.purple,
              Color.fromARGB(255, 226, 155, 239),
            ],
            begin: Alignment.topLeft ,
            end: Alignment.bottomRight ,
            ),
          ),
          child:  Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                 const ChangingPart(),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    
                     ElevatedButton(onPressed: (){}, child: const Text('Add')),
                     ElevatedButton(onPressed: (){}, child: const Text('clear All'),),
                   ],
                 ),
              ],
            ),
          ),
          //ElevatedButton(onPressed: (){}, child: Text('data'),),
          ),
        ),
      )
    );
  }
}

