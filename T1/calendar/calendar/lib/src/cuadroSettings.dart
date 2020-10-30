import 'package:flutter/material.dart';
import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';

class CuadroSettings extends StatefulWidget {
  const CuadroSettings({Key key}) : super(key: key);

  @override
  _CuadroSettingsState createState() => _CuadroSettingsState(text: null);
}

class _CuadroSettingsState extends State<CuadroSettings> {
  Color _valueColor;
  final String text;
  _CuadroSettingsState({Key key, @required this.text}) : super();
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
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'What do people call you?',
                labelText: 'Name *',
              ),
            ),
            new ButtonBar(buttonHeight: 100,),
            new ColorPicker(
              color: Colors.red,
              onChanged: (value) {
                setState(() {
                  _valueColor = value;
                });
              },
            ),
          ],
        )),
      ),
    );
  }
}
