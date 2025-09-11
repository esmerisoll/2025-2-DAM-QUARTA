import 'dart:io';

void main() {
  double saldo = 1000.0;
  int opcao;

  do {
    print("\nCaixa Eletrônico:");
    print("1 - Saldo");
    print("2 - Saque");
    print("3 - Depósito");
    print("4 - Sair");

    stdout.write("Escolha uma opção: ");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print("Saldo atual: R\$ ${saldo.toStringAsFixed(2)}");
        break;
      case 2:
        stdout.write("Digite o valor do saque: R\$ ");
        double saque = double.parse(stdin.readLineSync()!);
        if (saque <= saldo) {
          saldo -= saque;
          print("Saque realizado. Saldo: R\$ ${saldo.toStringAsFixed(2)}");
        } else {
          print("Saldo insuficiente!");
        }
        break;
      case 3:
        stdout.write("Digite o valor do depósito: R\$ ");
        double deposito = double.parse(stdin.readLineSync()!);
        saldo += deposito;
        print("Depósito realizado. Saldo: R\$ ${saldo.toStringAsFixed(2)}");
        break;
      case 4:
        print("Saindo...");
        break;
      default:
        print("Opção inválida");
    }
  } while (opcao != 4);
}
