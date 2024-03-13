import 'package:flutter/material.dart';
import 'package:to_do_list/small_container.dart';
import 'package:to_do_list/data/data_array.dart';

class ChangingPart extends StatefulWidget{
  const ChangingPart({super.key});
  @override
  State<StatefulWidget> createState() {
   return _ChangingPart();
  }
}

class _ChangingPart extends State<ChangingPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       SmallContainer(Text('txt1'),),
       SmallContainer(Text('txt2'),),
       SmallContainer(Text('txt3'),),
       ...dataArr.map((e) => SmallContainer(Text(e),),),
      ],
    );
  }
}