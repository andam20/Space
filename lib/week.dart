import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Week extends StatefulWidget {
  const Week({Key? key}) : super(key: key);

  @override
  State<Week> createState() => _WeekState();
}

class _WeekState extends State<Week> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        color: Colors.red,
        height: 123,
        width: 123,
        child: Text("adam"),
      ),
    );
  }
}
