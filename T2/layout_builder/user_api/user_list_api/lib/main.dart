import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  final String apiUrl = "https://randomuser.me/api/?results=10";

  Future<List<dynamic>> fetchUsers() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body)['results'];
  }

  String _name(dynamic user) {
    return user['name']['title'] +
        " " +
        user['name']['first'] +
        " " +
        user['name']['last'];
  }

  String _location(dynamic user) {
    return user['location']['country'];
  }

  String _age(Map<dynamic, dynamic> user) {
    return "Age: " + user['dob']['age'].toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child:PageView(
          children: <Widget>[
            FutureBuilder<List<dynamic>>(
              future: fetchUsers(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  print(_age(snapshot.data[0]));
                  return ListView.builder(
                      padding: EdgeInsets.all(8),
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(snapshot
                                        .data[index]['picture']['large'])),
                                title: Text(_name(snapshot.data[index])),
                                subtitle: Text(_location(snapshot.data[index])),
                                trailing: Text(_age(snapshot.data[index])),
                              )
                            ],
                          ),
                        );
                      });
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          Text('!aaaa')

          ],
          physics: BouncingScrollPhysics(),
        )));
    // child: Column(
    //   // mainAxisAlignment: MainAxisAlignment.center,
    //   children: <Widget>[

    //    SizedBox(
    //       height: 200,
    //       child: PageView(
    //       children: <Widget>[
    //         ListView(
    //           children: <Widget>[
    //             for (var i = 0; i < 10; i++)
    //             UserList(),

    //           ],
    //         ),
    //          Container(
    //               color: Colors.cyan,
    //             ),
    //       ]),
    //    ),
    //   ],
    // ),
  }
}

// https://medium.com/@maffan/how-to-fetch-data-using-api-calls-in-flutter-99668a60170c
