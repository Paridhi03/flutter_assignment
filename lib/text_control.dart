import 'package:flutter/material.dart';
import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  final _printText = [
    'To enter our app press next button',
    'Welcome to our app'
  ];
  var _listIndex = 0;

  void result() {
    setState(() {
      _listIndex = _listIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Text(_printText[_listIndex]),
        TextOutput(_printText[_listIndex]),
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('NEXT'),
          onPressed: result,
        ),
      ],
    );
  }
}
