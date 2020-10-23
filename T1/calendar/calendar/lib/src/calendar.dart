import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            for(var i=0; i<3; i++)CuadroWidget(),
            ]),
        ),
      ),
    );
  }
  
}

class CuadroWidget extends StatelessWidget {
  const CuadroWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: <Widget>[

          SizedBox(
            height: 15,
          ),
          
          Text('Uno'),
          Text('Dos'),
          Expanded(
            flex: 1,
            child: Container(
              width: 0,
              height: 0,
            )
          ),
          Text('Tres'),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}