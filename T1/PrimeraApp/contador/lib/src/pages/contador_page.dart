import 'package:contador/src/widget/contador_widget.dart';
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
            for(int i=0;i<_listContadores.length;i++)
              _botn(_listContadores[i]),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,

        children:<Widget>[
          FloatingActionButton(
            child: Icon(Icons.add), 
            onPressed: _addContador,//invocamos la funcion NO la llamamos
            tooltip: 'añadir contador',
          ),
        ],
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
      // floatingActionButton: _crearBotones(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

@
  // Widget _botn(Contador contador){
  //   int valor= contador.valor;

  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.end,
  //     children: <Widget>[
  //       FlatButton(
  //         child: Icon(Icons.add),
  //         onPressed:() => _incrementCounter(contador)
  //         ),
  //       SizedBox(
  //         width: 15.0,
  //         ),
  //       Text('${contador.valor}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),),
  //       SizedBox(width: 15.0,),
  //       FlatButton(
  //         child: Icon(Icons.remove),
  //         onPressed: () => _decrementCounter(contador)),
  //       SizedBox(width: 30.0,),
  //     ]
  //   );
  // }
  
  // Widget _crearBotones() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.end,
  //     children: <Widget>[
  //       SizedBox(width: 30.0,),
  //       FloatingActionButton(child: Icon(Icons.accessible_forward), onPressed: _restart ),
  //       Expanded( child: SizedBox(width: 30.0,)),
  //       FloatingActionButton(child: Icon(Icons.accessible_forward), onPressed: _quitar ),
  //       SizedBox(width: 30.0,),
  //       FloatingActionButton(child: Icon(Icons.accessible_forward), onPressed: _agregar )
  //     ]
  //   );
  // }

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
}
  int _nContadores=0;
  var _listContadores= <Contador>[];
  void _addContador(){
    setState(() {
      _listContadores.add(new Contador("contador" + _nContadores.toString(),0));//añadimos el widget a la lista
      _nContadores++;
    });
  }

}