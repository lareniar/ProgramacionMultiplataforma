import 'package:flutter/material.dart';
 
class WidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
      ),
    );
  }
}