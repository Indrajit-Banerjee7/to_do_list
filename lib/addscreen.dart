import 'package:flutter/material.dart';
import 'package:to_do_list/data/data_array.dart';

class AddScreen extends StatefulWidget {
  const AddScreen(this.callbk ,{Key? key}) : super(key: key);
  final void Function(String) callbk ;

  @override
  State<StatefulWidget> createState() {
    return _AddScreenState();
  }
}

class _AddScreenState extends State<AddScreen> {
  String inputValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('String Input Widget'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.max,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  setState(() {
                    inputValue = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Enter a string',
                  border: OutlineInputBorder(),
                ),
              ),
              //const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // You can use 'inputValue' variable wherever you need
                  widget.callbk(inputValue);
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
