import 'package:flutter/material.dart';

import 'cuadroSettings.dart';

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
          body: Column(
            children: [
              for (var i = 0; i < 10; i++)
                Row(children: [
                  Expanded(flex: 1, child: Container(child: CuadroHoras())),
                  for (var j = 0; j < 5; j++)
                    Expanded(
                        flex: 1,
                        child: Container(
                            child: CuadroContenido(
                                id: j.toString() + i.toString(),
                                color: 0xFFB74093))),
                ])
            ],
          ),
        ));
  }
}
class CuadroContenido extends StatefulWidget {
   const CuadroContenido({Key key, this.id, this.color, this.flexSize})
      : super(
          key: key,
        );
    final String id;
    final int color;
    final int flexSize;
    
  @override
  _CuadroContenidoState createState() => _CuadroContenidoState();
}

class _CuadroContenidoState extends State<CuadroContenido> {
  String id;
  int flexSize;
  int color;
  String texto = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(color),
      child: InkWell(
        onTap: () async {
          final information = await Navigator.push(
            context,
            MaterialPageRoute(
                fullscreenDialog: true, builder: (context) => CuadroSettings()),
          );
          setState(() {
            texto = 'aaa';
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
              Text('aaa')
              ],
          ),
        ),
      ),
    );
  }
}

class CuadroHoras extends StatelessWidget {
  const CuadroHoras({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text('aa'),
        ],
      ),
    );
  }
}

// _navigateUsingConstructor() async {
//   _value = await Navigator.of(context).push(
//     new MaterialPageRoute(
//       builder: (context) => new MyWidget(value: _value)
//     )
//   );
// }
