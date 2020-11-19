import 'package:flutter/material.dart';
import 'package:mobilelanjut/produklist.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final title = "GPU CARD";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          children: List.generate(menus.length, (index) {
            return Center(
                child: MenuCard(menu: menus[index])
            );
          }),
        ),
      ),
    );
  }
}

class Menu {
  const Menu({this.title, this.icon});

  final String title;
  final String icon;
}

const List<Menu> menus = const [
  const Menu(title: "ROG", icon: "assets/rog.png"),
  const Menu(title: "AOURUS", icon: "assets/aorus.png"),
  const Menu(title: "GIGABYTE", icon: "assets/giga.png"),
  const Menu(title: "NVIDIA FOUNDER EDITION", icon: "assets/fe.jpg"),
  const Menu(title: "TUF", icon: "assets/tuf.png"),
  const Menu(title: "STRIX", icon: "assets/strix.png"),
  const Menu(title: "HIS", icon: "assets/his.png"),
  const Menu(title: "SAPPHIRE", icon: "assets/nitro.png"),
  const Menu(title: "POWER COLLOR", icon: "assets/pc.png"),


];



class MenuCard extends StatelessWidget {
  const MenuCard({Key key, this.menu}) : super(key: key);

  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute (builder: (context) => ProdukList()),
          );
        },
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(5),),
              Expanded(
                  child:
                  Image.asset(menu.icon, height: 80.0, width: 80.0, fit: BoxFit.contain,)
              ),
              Text(menu.title, style: TextStyle(fontSize: 12.0)),
              Padding(padding: EdgeInsets.all(5),),
            ]
        ),
      ),
    );
  }

  void _showDialog(BuildContext context, Menu menu) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Keterangan"),
            content: new Text("Ini menu " + menu.title),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
    );
  }


}

