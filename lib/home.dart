import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    var alturaBarrStatus = MediaQuery.of(context).padding.top;
    var alturaAppBar = AppBar().preferredSize.height;
    //var larguraItem = largura * 0.25;
    var larguraItem = largura / 3;

    return Scaffold(
        appBar: AppBar(
          title: Text('Responsividade'),
        ),
        body: Row(
          children: [
            Container(
              width: larguraItem,
              height: 200,
              color: Colors.red,
              child: Text('Responsividade'),
            ),
            Container(
              width: larguraItem,
              height: 200,
              color: Colors.black,
              child: Text('Responsividade'),
            ),
            Container(
              width: larguraItem,
              height: 200,
              color: Colors.orange,
              child: Text('Responsividade'),
            ),
          ],
        ));
  }
}
