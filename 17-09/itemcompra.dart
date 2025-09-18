import 'produto.dart'; // importando a classe do arquivo produto.dart

class ItemCompra{
    Produto produto; 
    int quantidade;

    ItemCompra(this.produto, this.quantidade);

    double calcularSubTotal(){ // SubTotal dos Itens
        return quantidade * produto.valorUnitario;
    }

    @override
    String toString(){ // $ para trazer o que tem dentro da variavel
        return '${produto.nome} - ${quantidade} unid. X R\$ ${produto.valorUnitario.toStringAsfixed(2)} = R\$ ${calcularSubTotal().toStringAsfixed(2)}';
    }
}