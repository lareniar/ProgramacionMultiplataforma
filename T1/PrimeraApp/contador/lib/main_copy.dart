import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contadores',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget> [
            /*_crearBotones(),
            Divider(),
            _crearBotones(),*/
          //_listContadores.forEach((Data data) => _crearBotones(data)),//por cada objeto de la lista tenemos que crear el widget de _crearBotones
          for(int i=0;i<_listContadores.length;i++)
            _crearBotones(_listContadores[i]),
           
          ],

          
        ),
        
      ),
      //botón para añadir contadores
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
      
    );
  }

  //Contadores
  Widget _crearBotones(Data elObjeto){
    int valor= elObjeto.valor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[
        FloatingActionButton(
          child: Icon(Icons.remove), 
          onPressed: () => _decrementCounter(elObjeto),
          tooltip: 'Decrement',
          ),
        
        SizedBox(width:15.0),
        Text( 
          '$valor',//aqui tiene que ir su valor.
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(
          width:15.0),
        FloatingActionButton(
          child: Icon(Icons.add), 
          onPressed:() =>  _incrementCounter(elObjeto),
          tooltip: 'Increment',
        ),
      ],
      
    );
  }
}
