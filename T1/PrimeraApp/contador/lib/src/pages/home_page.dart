import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final TextStyle estiloTexto = TextStyle(fontSize: 75);
    final conteo = 0;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
            MainAxisAlignment.center,
          children: [
            Text('oleee', style: estiloTexto),
            Text('que oleee', style: estiloTexto),
            Text('que oleee', style: estiloTexto),
            Text('Cuantos oles hay: $conteo', style: estiloTexto),
          ],
        ),
      ),
      floatingActionButton: 
        FloatingActionButton(
          child: Icon(Icons.accessible_forward),
          onPressed: (){
            print('eyyy');
          },
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}