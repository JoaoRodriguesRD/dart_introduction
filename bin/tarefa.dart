import 'package:tarefa/tarefa.dart' as tarefa;
import 'dart:io';

void main(List<String> arguments) {
  print('Olá!');
  bool loop = true;
  while (loop) {
    print(
        "Digite a questão que quer rodar: 1, 2, 3, 4, qualquer outro valor para finalizar a aplicação");
    String? choice = stdin.readLineSync();
    switch (choice) {
      case "1":
        print("questao 1 selecionada");
        tarefa.questao01();
        break;
        case "2":
        print("questao 2 selecionada");
        tarefa.questao02();
        break;
        case "3":
        print("questao 3 selecionada");
        tarefa.questao03();
        break;
        case "4":
        print("questao 4 selecionada");
        tarefa.questao04();
        break;
      default:
      print("Encerrando a aplicação");
      loop = false;
      
    }
  }
}
