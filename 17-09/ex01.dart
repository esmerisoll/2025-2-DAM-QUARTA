// Sistema de Ponto de Venda

// Sistema de Ponto de Venda

// 1. Importando todas as classes necessárias
import 'produto.dart';
import 'itemcompra.dart';
import 'carrinhocompra.dart';

void main(){
  // 2. Criando instâncias dos produtos que estarão à venda
  Produto produto1 = Produto('Arroz 5kg', 25.00);
  Produto produto2 = Produto('Feijão 1kg', 8.50);
  Produto produto3 = Produto('Óleo de Soja 900ml', 7.00);
  Produto produto4 = Produto('Café 500g', 15.00);

  // 3. Criando os itens da compra (Produto + Quantidade)
  ItemCompra item1 = ItemCompra(produto1, 2); // 2 pacotes de Arroz
  ItemCompra item2 = ItemCompra(produto2, 3); // 3 pacotes de Feijão
  ItemCompra item3 = ItemCompra(produto4, 1); // 1 pacote de Café

  // 4. Criando o carrinho de compra
  CarrinhoCompra carrinho = CarrinhoCompra();

  // 5. Adicionando os itens ao carrinho
  carrinho.adicionarItem(item1);
  carrinho.adicionarItem(item2);
  carrinho.adicionarItem(item3);

  // 6. Mostrando os resultados no console
  print('--- Itens no Carrinho ---');
  // Itera sobre cada item no carrinho e usa o método toString() de ItemCompra para formatar a exibição
  for (var item in carrinho.itens) {
    print(item);
  }

  print('\n--- Resumo da Compra ---');
  print('Total de itens: ${carrinho.quantidadeItens()}');
  print('Valor total: R\$ ${carrinho.calcularTotal().toStringAsFixed(2)}');
  print('Desconto aplicado: R\$ ${carrinho.calcularDesconto().toStringAsFixed(2)}');
  print('-------------------------');
  print('Valor final a pagar: R\$ ${carrinho.calcularValorFinal().toStringAsFixed(2)}');
}