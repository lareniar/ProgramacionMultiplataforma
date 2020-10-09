import 'package:contador/src/class/contador.dart';
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
            for (var i = 0; i < 5; i++) 
            _botn(),
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
      // floatingActionButton: _crearBotones(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _botn(){
    Contador contador = new Contador(0);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        FlatButton(child: Icon(Icons.add), onPressed: () => _agregar(contador) ),
        SizedBox(width: 15.0,),
        Text('${contador.numero}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),),
        SizedBox(width: 15.0,),
        // FlatButton(child: Icon(Icons.remove), onPressed: () contador.sumNumero() ),
        // SizedBox(width: 30.0,),
      ]
    );
  }
  
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
    
    void _agregar(Contador contador){
    setState(() {
    contador.setNumero = contador.get_numero + 1;
      
    });

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