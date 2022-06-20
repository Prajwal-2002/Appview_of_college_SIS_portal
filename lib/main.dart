//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
//import 'package:webview_flutter/webview_flutter.dart';
//import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() async => runApp(HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: WebviewScaffold(
          initialChild: const Center(
            child: CircularProgressIndicator(),
          ),
          url: 'http://parents.msrit.edu',
          appBar: AppBar(
              backgroundColor: Colors.red.shade900,
              title: const Text(
                'SIS PORTAL',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              centerTitle: true),
        ),
      ),
    );
  }
}
