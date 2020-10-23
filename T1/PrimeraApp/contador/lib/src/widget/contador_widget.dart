import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ContadorWidget extends StatefulWidget  {
  ContadorWidget(K)
 final ContadorWidget item;
 @override
 Widget build(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        FlatButton(
          child: Icon(Icons.add),
          onPressed:() => _incrementCounter(this)
          ),
        SizedBox(
          width: 15.0,
          ),
        Text('${this.valor}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),),
        SizedBox(width: 15.0,),
        FlatButton(
          child: Icon(Icons.remove),
          onPressed: () => _decrementCounter(this)),
        SizedBox(width: 30.0,),
      ]);
  }

   
}

 void _incrementCounter(Contador item ) {
  setState(() {//para decirle que re-pinte 
    item.valor++;
    //_counter++;
  });
  }

  void _decrementCounter(Contador item) {
  setState(() {
    item.valor--;
    //_counter--;
  });

