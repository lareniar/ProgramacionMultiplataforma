import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CuadroSettings extends StatefulWidget {
  const CuadroSettings({Key key}) : super(key: key);

  @override
  _CuadroSettingsState createState() => _CuadroSettingsState(text: null);
}

class _CuadroSettingsState extends State<CuadroSettings> {
  Color _valueColor;
  Color boxColor;
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  final String text;
  
  _CuadroSettingsState({Key key, @required this.text}) : super();
    TextEditingController textC = new TextEditingController();
     String nUsername = "";
  TextEditingController etPassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('text'),
        ),
        body: Center(
            child: ListView(
          children: <Widget>[
            Container(
              width: 400,
              height: 100,
              decoration: new BoxDecoration(color: _valueColor),
            ),
            new TextFormField(
              controller: textC,
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Nombre de asignatura',
                labelText: 'Asignatura',
              ),
            ),
            Container(
              width: 70,
              alignment: Alignment.center,
              child:MaterialButton(
              color: Colors.lightBlue,
              child: Text('Cambiar color'),
              onPressed: _showCupertinoDialog,
            ), ),
            
            new ButtonBar(buttonHeight: 100,),
             Container(
              alignment: Alignment.centerRight,
              child: MaterialButton(
                onPressed: () {
                setState(() {
                  Map map = {'containerText': textC.text, 'boxColor': _valueColor};
                  Navigator.of(context).pop(map);
                });
              },
                color: Colors.orange,
                textColor: Colors.white,
                child: Text('Enviar'),
              ),

            ),
          ],
        )),
      ),
    );
  }
  void changeColor(Color color) {
  setState(() => pickerColor = color);
}

  _showCupertinoDialog() {
    showDialog(
  context: context,
  child: AlertDialog(
    title: const Text('Pick a color!'),
    content: SingleChildScrollView(
      child: ColorPicker(
        pickerColor: pickerColor,
        onColorChanged: changeColor,
        showLabel: true,
        pickerAreaHeightPercent: 0.8,
      ),
    ),
    actions: <Widget>[
      FlatButton(
        child: const Text('Got it'),
        onPressed: () {
          setState(() => _valueColor = pickerColor);
          Navigator.of(context).pop();
        },
      ),
    ],
  ),
);
}
}


