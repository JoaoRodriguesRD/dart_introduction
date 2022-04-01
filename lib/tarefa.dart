import 'dart:io';

String questao01() {
  print("------ CALCULAR IDADE EM DIAS ------ ");
  String? nome = pegarNomeQuestao01();
  print("Digite sua idade:");
  String? id = stdin.readLineSync();
  num idade = num.parse(id!);
  print("Sua idade: ${idade} ");
  num dias_de_vida = idade * 365;
  print("Sua idade em dias é ${dias_de_vida}");
  return '';
}

String? pegarNomeQuestao01() {
  print("Digite seu nome:");
  String? nomedigitado = stdin.readLineSync();
  return nomedigitado;
}

String questao02() {
  print("------ CALCULAR SALARIO DE FUNCIONARIO ------ ");
  num salario_minimo = getNum("Digite o valor do salario mínimo: ");
  print("Quantos salarios minimos recebe?");
  String? QSM = stdin.readLineSync();
  num quantidade_salario_minimo = num.parse(QSM!);

  print("Nome do funcionario:");
  String? nome = stdin.readLineSync();

  print("Seu salario bruto é ${salario_minimo * quantidade_salario_minimo} ");
  print(
      "Seu salario líquido é ${salario_minimo * quantidade_salario_minimo * 0.7} ");
      print("Até mais ${nome}!");
  return '';
}

/**
 * 
 * pega o valor de um numero via input no terminal
 */
num getNum(String message){
  print(message);
  String? number = stdin.readLineSync();
  return num.parse(number!);
}

String questao03() {
  File('./csv/teste.txt').readAsString().then((String contents) {
    //print(contents);
    List<String> splitted = contents.split('\n');
    

    num salario_minimo = getNum("Digite o valor do salario mínimo: ");

    splitted.forEach((element) => calcularSalario(element, salario_minimo));
  });
  return '';
}

String calcularSalario(String element, num salario_minimo) {
  final nome_quantidade = element.split(', ');
  nome_quantidade.forEach((el) => exibir(el, salario_minimo));
  return '';
}

String exibir(String element, num salario_minimo) {
  if (element == "") {
  } else {
    if (int.tryParse(element) != null) {
      num salario = int.parse(element) * salario_minimo;
      print("Folha de pagamento: R\$ ${salario} (${element} salários mínimos)");
    } else {
      print("nome: ${element}");
    }
  }
  return '';
}

String questao04() {
  num money = getNum("Digite o seu dinheiro: ");
  if (money < 10 || money > 700) {
    print("Sinto muito... Só aceitamos dar troco acima de 10 e menos de 600..");
  } else {
    String resultado = calcularTrocado(money);
    print(resultado);
  }
  return '';
}

String calcularTrocado(num money) {
  num notas_100 = 0;
  num notas_50 = 0;
  num notas_10 = 0;
  num notas_5 = 0;
  num notas_1 = 0;
  num valor = money;
  while (valor > 0) {
    if (valor >= 100) {
      notas_100++;
      valor -= 100;
    } else if (valor >= 50) {
      notas_50++;
      valor -= 50;
    } else if (valor >= 10) {
      notas_10++;
      valor -= 10;
    } else if (valor >= 5) {
      notas_5++;
      valor -= 5;
    } else if (valor >= 1) {
      notas_1++;
      valor -= 1;
    }
  }
  return '''Quantidade de notas de 100 = ${notas_100},
 Quantidade de notas de 50 = ${notas_50},
 Quantidade de notas de 10 = ${notas_10},
  Quantidade de notas de 5 = ${notas_5},
  Quantidade de notas de 1 = ${notas_1}''';
}
