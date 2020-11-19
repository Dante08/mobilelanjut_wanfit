import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class ProdukList extends StatefulWidget {

  @override
  _ProdukListState createState() => new _ProdukListState();
}

class _ProdukListState extends State<ProdukList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color(212121),
        title: Text('List GPU'),
      ),

      backgroundColor: Colors.white,
      body: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: ListView(
                children: <Widget>[
                  Center(
                    child: Column(
                      children: <Widget>[
                        _produk1(),
                        _produk2(),
                        _produk3(),
                        _produk4(),
                        _produk5(),



                      ],
                    ),
                  ),
                ],
              ),
            ),

          ]
      ),
    );

  }

  Widget _produk1(){
    return Column(
      children: <Widget>[
        Card(
          child: Row(
            children: <Widget>[
              Image.asset(
                "assets/vga1.jpg",
                width: 65.0,
                height: 130.0,
              ),

              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text('ASUS STRIX GTX 1060 6GB' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Tersedia 5 Unit' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Rp 2.200.000' , style: TextStyle(color: Colors.blue, fontSize: 20.0)),
                      RatingBar(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),

                ),

              ),
            ],
          ),
        )
      ],
    );

  }

  Widget _produk2(){
    return Column(
      children: <Widget>[
        Card(
          child: Row(
            children: <Widget>[
              Image.asset(
                "assets/vga2.jpg",
                width: 65.0,
                height: 130.0,
              ),

              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text('RED DEVIL RX 570' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Tersedia 2 Unit' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Rp 1.250.000' , style: TextStyle(color: Colors.blue, fontSize: 20.0)),
                      RatingBar(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),

                ),

              ),
            ],
          ),
        )
      ],
    );

  }


  Widget _produk3(){
    return Column(
      children: <Widget>[
        Card(
          child: Row(
            children: <Widget>[
              Image.asset(
                "assets/vga3.jpg",
                width: 65.0,
                height: 130.0,
              ),

              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text('ASUS ROG STRIX 1050Ti' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Tersedia 10 unit' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Rp 1.550.000' , style: TextStyle(color: Colors.blue, fontSize: 20.0)),
                      RatingBar(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),

                ),

              ),
            ],
          ),
        )
      ],
    );

  }


  Widget _produk4(){
    return Column(
      children: <Widget>[
        Card(
          child: Row(
            children: <Widget>[
              Image.asset(
                "assets/vga4.jpg",
                width: 65.0,
                height: 130.0,
              ),

              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text('AORUS RTX 2060s' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Tersedia 10 unit' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Rp 6.100.000' , style: TextStyle(color: Colors.blue, fontSize: 20.0)),
                      RatingBar(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),

                ),

              ),
            ],
          ),
        )
      ],
    );

  }


  Widget _produk5(){
    return Column(
      children: <Widget>[
        Card(
          child: Row(
            children: <Widget>[
              Image.asset(
                "assets/vga5.jpg",
                width: 65.0,
                height: 130.0,
              ),

              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text('ASUS TUF GAMING RTX 2060' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Tersedia 5 unit' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Rp 6.500.000' , style: TextStyle(color: Colors.blue, fontSize: 20.0)),
                      RatingBar(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),

                ),

              ),
            ],
          ),
        )
      ],
    );

  }


}