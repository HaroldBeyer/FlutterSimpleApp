import 'package:flutter/material.dart';
import 'package:temp/models/item.dart';

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

class HomePage extends StatefulWidget {
  var items = new List<Item>();
  HomePage() {
    items = [];
    items.add(Item(title: "Calça preta", done: false));
    items.add(Item(title: "Cueca marrom", done: true));
    items.add(Item(title: "Meia transparente", done: false));
  }
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        body: ListView.builder(
          itemCount: widget.items.length,
          itemBuilder: (BuildContext ctxt, int index) {
            final item = widget.items[index];
            return CheckboxListTile(
              title: Text(item.title),
              key: Key(item.title),
              value: item.done,
              onChanged: (value) {
                print(value);
              },
            );
          },
        ));
  }
}
