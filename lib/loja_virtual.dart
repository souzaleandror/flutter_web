import 'package:flutter/material.dart';
import 'package:flutter_web/widget/item_produto.dart';
import 'package:flutter_web/widget/mobile_app_bar.dart';
import 'package:flutter_web/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        var largura = constraint.maxWidth;
        var altura = AppBar().preferredSize.height;
        return Scaffold(
          appBar: largura < 600
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(
                    largura,
                    altura,
                  ),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(
                    largura,
                    altura,
                  ),
                ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: _ajustarVisualizacao(largura),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                ItemProduto('imagens/p1.jpg', 'R\$ 2.550,00', 'NoteBook'),
                ItemProduto('imagens/p2.jpg', 'R\$ 550,00', 'NoteBook2'),
                ItemProduto('imagens/p3.jpg', 'R\$ 3.550,00', 'NoteBook3'),
                ItemProduto('imagens/p4.jpg', 'R\$ 4.550,00', 'NoteBook5'),
                ItemProduto('imagens/p5.jpg', 'R\$ 6.550,00', 'NoteBook6'),
                ItemProduto('imagens/p6.jpg', 'R\$ 7.550,00', 'NoteBook7'),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _ajustarVisualizacao(double larguraTela) {
    int colunas = 2;
    if (larguraTela <= 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }

    return colunas;
  }
}
