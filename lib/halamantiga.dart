import 'package:flutter/material.dart';

void main(){
  runApp(
      new MaterialApp(
        title: "Halaman satu",
        home: new Halamantiga(),
      )
  );
}


class Halamantiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(212121),
          title: new Text("coming soon"),
        ),
        body: new Container(
            padding: EdgeInsets.all(20.0),
            child: new Center(
              child: new Text("comming soon"),
            )
        )
    );
  }
}