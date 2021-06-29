import 'package:flutter/material.dart';

class Orientacao extends StatefulWidget {
  const Orientacao({Key? key}) : super(key: key);

  @override
  _OrientacaoState createState() => _OrientacaoState();
}

class _OrientacaoState extends State<Orientacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientacao'),
      ),
      body: OrientationBuilder(
        builder: (context, orientacao) {
          // return Container(
          //   child: orientacao == Orientation.portrait
          //       ? Text('Portrait')
          //       : Text('Lanscape'),
          // );
          return GridView.count(
            crossAxisCount: orientacao == Orientation.portrait ? 2 : 4,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.black,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.purple,
              ),
            ],
          );
        },
      ),
    );
  }
}
