import 'package:flutter/material.dart';

class ResponsividadeWrap extends StatefulWidget {
  const ResponsividadeWrap({Key? key}) : super(key: key);

  @override
  _ResponsividadeWrapState createState() => _ResponsividadeWrapState();
}

class _ResponsividadeWrapState extends State<ResponsividadeWrap> {
  @override
  Widget build(BuildContext context) {
    double largura = 200;
    double altura = 200;

    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Container(
        color: Colors.black26,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [
            Container(
              width: largura,
              height: altura,
              color: Colors.orange,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.green,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.grey,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.purple,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
