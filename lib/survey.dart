import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Survey extends StatefulWidget {
  const Survey({Key? key}) : super(key: key);

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        height: 123,
        width: 123,
        child: Text('andam'),
      ),
    );
  }
}
