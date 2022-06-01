import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Companies extends StatefulWidget {
  const Companies({Key? key}) : super(key: key);

  @override
  State<Companies> createState() => _CompaniesState();
}

class _CompaniesState extends State<Companies> {
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
