import 'package:flutter/material.dart';

class RegrasLayouts extends StatefulWidget {
  const RegrasLayouts({Key? key}) : super(key: key);

  @override
  _RegrasLayoutsState createState() => _RegrasLayoutsState();
}

class _RegrasLayoutsState extends State<RegrasLayouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
      ),
      body: Container(
        //width: MediaQuery.of(context).size.width,
        width: 300,
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
        child: LayoutBuilder(
          builder: (context, constraint) {
            var largura = constraint.maxWidth;
            print('Largura: $largura');

            if (largura < 600) {
            } else {}

            return Container(
              child: Text('Jamilton Damasceno'),
            );
          },
        ),
      ),
    );
  }
}
