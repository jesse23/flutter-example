import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  TestView({Key key, this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;
  @override
  _TesViewState createState() => _TesViewState();
}

class _TesViewState extends State<TestView> {
  // model
  var model = {'counter': 7};

  // action
  void _incrementCounter() {
    setState(() {
      model['counter']++;
    });
  }

  // view
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '${model['counter']}',
            style: Theme.of(context).textTheme.headline4,
          ),
          RaisedButton(
            // icon: Icon(Icons.add),
            child: Text(
              '+1',
            ),
            onPressed: _incrementCounter,
          )
        ],
      ),
    );
  }
}
