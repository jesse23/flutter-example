/// https://flutter.dev/docs/get-started/web
/// https://github.com/cirruslabs/docker-images-flutter
/// https://flutter.dev/docs/get-started/flutter-for/react-native-devs
/// https://github.com/aagarwal1012/Liquid-Pull-To-Refresh
/// https://github.com/hayderux/electron-quick-start-flutter
/// https://stackoverflow.com/questions/52330102/use-js-library-in-flutter
///
/// dev server
/// flutter run -d web-server --web-hostname 0.0.0.0 --web-port 8080
///
/// electron related:
/// sudo apt-get install wine-stable
/// cd build/web
/// npm i
/// npm run package
/// zip -r app.zip "Flutter App-win32-x64"

/// https://dev.to/graphicbeacon/how-to-use-javascript-libraries-in-your-dart-applications--4mc6
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:few_flutter/TestWidget.dart';
import 'package:few_flutter/TestView.dart';

// entry for the app, better to be async
void main() async {
  runApp(MyApp());
  context.callMethod('alert', ['Hello from Dart!']);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Few Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Few Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      /*
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      */
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (choose the "Toggle Debug Paint" action
          // from the Flutter Inspector in Android Studio, or the "Toggle Debug
          // Paint" command in Visual Studio Code) to see the wireframe for each
          // widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, World!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            TestWidget(
              name: 'Moster Hunter',
            ),
            TestView(
              title: 'test',
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
