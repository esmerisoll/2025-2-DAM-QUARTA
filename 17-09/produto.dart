class Produto{
    String nome;
    double valorUnitario;

    Produto(this.nome, this.valorUnitario); // Inserir o Nome do Produto e o Valor Unitario

    @override
    String toString(){
        return 'Produto: $nome - Valor: R\$ ${valorUnitario.toStringAsfixed(2)}';
    }
}