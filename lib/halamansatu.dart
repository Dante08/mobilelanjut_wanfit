import 'package:flutter/material.dart';
import 'package:mobilelanjut/produklist.dart';
import 'package:mobilelanjut/prosesor.dart';

void main(){
  runApp(
      new MaterialApp(
        title: "Halaman satu",
        home: new Halamansatu(),
      )
  );
}


class Halamansatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(212121),
        title: new Text("PCSTORE"),
      ),
      body: new Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.pink,
                    child: new Icon(Icons.computer, color: Colors.white, size: 50.0,),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 100.0,
                      color: Colors.black87,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute (builder: (context) => prosesor()),
                          );
                        },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Processor", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                          Text("Ini adalah contoh artikel pada listview dengan versi custom", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.pink,
                    child: new Icon(Icons.graphic_eq, color: Colors.white, size: 50.0,),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 100.0,
                      color: Colors.black87,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute (builder: (context) => ProdukList()),
                          );
                        },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("GPU", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                          Text("Ini adalah contoh artikel pada listview dengan versi custom", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.pink,
                    child: new Icon(Icons.memory, color: Colors.white, size: 50.0,),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 100.0,
                      color: Colors.black87,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("RAM", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                          Text("Ini adalah contoh artikel pada listview dengan versi custom", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.pink,
                    child: new Icon(Icons.power_input, color: Colors.white, size: 50.0,),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 100.0,
                      color: Colors.black87,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("POWER SUPPLY", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                          Text("Ini adalah contoh artikel pada listview dengan versi custom", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
