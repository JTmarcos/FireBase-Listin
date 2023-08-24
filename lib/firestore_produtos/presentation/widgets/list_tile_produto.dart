import 'package:flutter/material.dart';
import '../../model/produto.dart';

class ListTileProduto extends StatelessWidget {
  final Produto produto;
  final bool isComprado;
  final Function showmodal;
  final Function remove;
  final Function updateState;
  const ListTileProduto({
    super.key,
    required this.remove,
    required this.updateState,
    required this.produto,
    required this.isComprado,
    required this.showmodal,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      trailing: IconButton(
          onPressed: () {
            remove(produto);
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          )),
      onTap: () {
        showmodal(model: produto);
      },
      leading: IconButton(
        icon: (isComprado)
            ? const Icon(Icons.shopping_basket)
            : const Icon(Icons.check),
        onPressed: () {
          updateState(produto);
        },
      ),
      title: Text(
        (produto.amount == null)
            ? produto.name
            : "${produto.name} (x${produto.amount!.toInt()})",
      ),
      subtitle: Text(
        (produto.price == null)
            ? "Clique para adicionar preço"
            : "R\$ ${produto.price!}",
      ),
    );
  }
}
