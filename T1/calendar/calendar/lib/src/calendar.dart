import 'package:flutter/material.dart';

import 'cuadroSettings.dart';

void main() => runApp(MyApp());
  var horasList = [
    '8.00\n8.55',
    '8.55\n9.50',
    '9.50\n10.45',
    '10.45\n11.40',
    '11.40\n12.05',
    '12.05\n13.00',
    '13.00\n13.55',
    '13.55\n14.50'
  ];

class MyApp extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: [
            for (var i = 0; i < 8; i++)
              Row(children: [
                Expanded(flex: 1, child: Container(child: CuadroHoras(horas: horasList[i]))),
                for (var j = 0; j < 5; j++)
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: CuadroContenido(
                        id: j.toString() + i.toString(),
                      )
                    )
                  ),
              ])
          ],
        ),
      ));
  }
}

class CuadroContenido extends StatefulWidget {
   const CuadroContenido({Key key, this.id, this.flexSize})
      : super(
          key: key,
        );
    final String id;
    final int flexSize;
    
  @override
  _CuadroContenidoState createState() => _CuadroContenidoState();
}

class _CuadroContenidoState extends State<CuadroContenido> {
  String id;
  int flexSize;
  String _texto = '';
  Color _boxColor = Color(0xffd6acec);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _boxColor,
      child: InkWell(
        onTap: () async {
          var information = await Navigator.push(
            context,
            MaterialPageRoute(
                fullscreenDialog: true, builder: (context) => CuadroSettings()),
          );
          print(information);
          setState(() {
            _texto = information['containerText'];
            _boxColor = information['boxColor'];
          });
        },
        child: Container(
          width: 82,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          child: ListView(
            children: <Widget>[
              Text('$_texto')
              ],
          ),
        ),
      ),
    );
  }
}

class CuadroHoras extends StatelessWidget {

  const CuadroHoras(  {
    Key key, 
    this.horas
  }) : super(key: key);
  final horas;
  @override
  Widget build(BuildContext context) {
        return Container(
          width: 82,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xffcbb6d5),
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          child: ListView(
            children: <Widget>[
              Text('$horas'),
        ],
      ),
    );
  }
}
