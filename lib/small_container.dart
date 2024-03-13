import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  const SmallContainer(this.txt , {super.key});
  final Text txt ;
  @override
  Widget build(BuildContext context) {
    return (Container(
      //width: 30,
      //color:
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 216, 154, 227),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
             SizedBox(
              width: 250,
              child: Center(child: txt),
            ),
            //const SizedBox(width: 70),
            ElevatedButton(onPressed: () {}, child: const Text("delet")),
          ],
        ),
      ),
    ));
  }
}
