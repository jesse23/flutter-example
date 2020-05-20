import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  TestWidget({@required this.name});

  final name;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello $name!!',
      textDirection: TextDirection.ltr,
    );
  }
}
