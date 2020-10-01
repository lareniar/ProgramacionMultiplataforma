import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPagestate();
 

}

class _ContadorPagestate extends State {
final TextStyle _estiloTexto = TextStyle(fontSize: 75);
int _conteo = 5;

@override
  Widget build(BuildContext context) {
    
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
            Text('oleee', style: _estiloTexto),
            Text('que oleee', style: _estiloTexto),
            Text('que oleee', style: _estiloTexto),
            Text('Cuantos oles hay: $_conteo', style: _estiloTexto),
          ],
        ),
      ),
      // floatingActionButton: 
      //   FloatingActionButton(
      //     child: Icon(Icons.accessible_forward),
      //     onPressed: (){
      //       print('eyyy');
      //       print(_conteo);
      //       setState(() {
      //         _conteo = _conteo + 1;
      //       });
      //     },
      //     ),
      floatingActionButton: _crearBotones(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.accessible_forward), onPressed: _restart ),
        Expanded( child: SizedBox(width: 30.0,)),
        FloatingActionButton(child: Icon(Icons.accessible_forward), onPressed: _quitar ),
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.accessible_forward), onPressed: _agregar )
      ]
    );
  }
    
  void _agregar(){
    setState(() {
    _conteo++;
      
    });
  }
  void _quitar(){
    setState(() {
    _conteo-= 1;
      
    });
  }
  void _restart(){
    setState(() {
    _conteo=0;
      
    });
  }
}