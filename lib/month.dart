import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Month extends StatefulWidget {
  const Month({Key? key}) : super(key: key);

  @override
  State<Month> createState() => _MonthState();
}

class _MonthState extends State<Month> {
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
