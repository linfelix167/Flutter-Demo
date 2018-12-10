import 'package:flutter/material.dart';

void main() => runApp(GettingStartApp());

class GettingStartApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        title: "Getting Started Title",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("App Bar Title"),
          ),
          body: new HomeWidget()
        )
        );
    }
}

class HomeWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return new ListView.builder(
        itemCount:  20,
        itemBuilder: (context, rowNumber) {
          return new Container(
            padding: new EdgeInsets.all(16.0),
            child: new Column(
            children: <Widget>[
              new Image.network("https://goo.gl/vFdXGc"),
              new Container(height: 8.0,),
              new Text("Instagram Firebase course", 
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              new Divider(color: Colors.green)
            ],
          ),
          );

        },
      );
    }
}