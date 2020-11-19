import 'package:flutter/material.dart';

void main(){
  runApp(
      new MaterialApp(
        title: "Halaman satu",
        home: new Halamandua(),
      )
  );
}


class Halamandua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(212121),
          title: new Text("Coming soon"),
        ),
        body: new Container(
            padding: EdgeInsets.all(20.0),
            child: new Center(
              child: new Text("coming soon"),
            )
        )
    );
  }
}