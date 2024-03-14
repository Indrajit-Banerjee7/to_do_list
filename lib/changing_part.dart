import 'package:flutter/material.dart';
import 'package:to_do_list/small_container.dart';
import 'package:to_do_list/data/data_array.dart';

class ChangingPart extends StatefulWidget {
  const ChangingPart(this.onTapAdd, {Key? key}) : super(key: key);
  final void Function() onTapAdd;

  @override
  State<StatefulWidget> createState() {
    return _ChangingPartState();
  }
}

class _ChangingPartState extends State<ChangingPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SmallContainer(Text('txt1')),
        SmallContainer(Text('txt2')),
        SmallContainer(Text('txt3')),
        ...dataArr.map((e) => SmallContainer(Text(e))),
         Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: widget.onTapAdd,
                      child: const Text('Add'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Clear All'),
                    ),
                  ],
                ),
        // ElevatedButton(
        //   onPressed: widget.onTapAdd,
        //   child: Text('Add'),
        // ),
      ],
    );
  }
}
