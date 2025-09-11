import 'dart:io';
void main(){
    stdout.write("digite sua idade:");
    int idade = int.parse(stdin.readLineSync()!);
    if(idade >= 16) {
        print('voce pode votar esse ano');
    }
        else {
        print("voce nao pode votar este ano.");
    }
}