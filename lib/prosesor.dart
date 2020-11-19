import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class prosesor extends StatefulWidget {

  @override
  _prosesorState createState() => new _prosesorState();
}

class _prosesorState extends State<prosesor> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color(212121),
        title: Text('List Prosesor'),
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
                "assets/prosesor/x5460.jpg",
                width: 65.0,
                height: 130.0,
              ),

              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text('Intel Xeon X5460' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Tersedia 5 Unit' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Rp 500.000' , style: TextStyle(color: Colors.blue, fontSize: 20.0)),
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
                "assets/prosesor/i3-3240.jpg",
                width: 65.0,
                height: 130.0,
              ),

              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text('intel Core i3-3240' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Tersedia 2 Unit' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Rp 650.000' , style: TextStyle(color: Colors.blue, fontSize: 20.0)),
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
                "assets/prosesor/a10-9700.jpg",
                width: 65.0,
                height: 130.0,
              ),

              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text('AMD A10 9700' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Tersedia 10 unit' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Rp 450.000' , style: TextStyle(color: Colors.blue, fontSize: 20.0)),
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
                "assets/prosesor/r5-2600.jpg",
                width: 65.0,
                height: 130.0,
              ),

              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text('AMD RYZEN 5 2600 AM4' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Tersedia 10 unit' , style: TextStyle(color: Colors.black)),

                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text('Rp 2.100.000' , style: TextStyle(color: Colors.blue, fontSize: 20.0)),
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
                "assets/prosesor/i7-9700k.jpg",
                width: 65.0,
                height: 130.0,
              ),

              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text('Intel Core i7 9700K' , style: TextStyle(color: Colors.black)),

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