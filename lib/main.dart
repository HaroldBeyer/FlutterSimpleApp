import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Haroldo app fodão',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.yellow),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Esuqerda
          leading: Text("Oi"),
          //meio
          title: Text("Roufest"),
          //direita
          actions: <Widget>[Icon(Icons.child_care)],
        ),
        body: Container(
          child: Center(child: Text("Ola´mundo")),
        ));
  }
}
