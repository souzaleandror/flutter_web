import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  String imagem;
  String preco;
  String descricao;

  ItemProduto(this.imagem, this.preco, this.descricao);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset(
              this.imagem,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(this.descricao),
          ),
          Expanded(
            flex: 1,
            child: Text(
              this.preco,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
