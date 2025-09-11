
import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int numeroSecreto = random.nextInt(100) + 1;
  int palpite = 0;

  print("Tente adivinhar o número entre 1 e 100!");

  while (palpite != numeroSecreto) {
    stdout.write("Digite seu palpite: ");
    palpite = int.parse(stdin.readLineSync()!);

    print(palpite == numeroSecreto
        ? "Parabéns! Você acertou!"
        : (palpite > numeroSecreto ? "Muito alto" : "Muito baixo"));
  }
}