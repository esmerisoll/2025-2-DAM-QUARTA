import 'dart:io';
void main() {
  stdout.write("Digite o valor da compra: R\$ ");
  double valor = double.parse(stdin.readLineSync()!);

  if (valor > 100) {
    double desconto = valor * 0.10;
    double valorFinal = valor - desconto;
    print("Valor com desconto: R\$ ${valorFinal.toStringAsFixed(2)}");
  } else {
    print("Valor da compra: R\$ ${valor.toStringAsFixed(2)}");
  }
}