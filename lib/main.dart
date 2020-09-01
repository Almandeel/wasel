import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Driver App'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: InAppWebView(
            initialUrl: "http://192.168.43.65:8000",
            initialHeaders: {},
            initialOptions: InAppWebViewGroupOptions(
                crossPlatform: InAppWebViewOptions(
                  debuggingEnabled: false,
                )
            ),
          ),
        ),
      ),
    );
  }
}