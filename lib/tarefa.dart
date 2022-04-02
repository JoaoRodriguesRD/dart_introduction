import 'dart:io';

String questao01() {
  print("------ CALCULAR IDADE EM DIAS ------ ");
  String? nome = pegarNomeQuestao01();
  print("Digite sua idade:");
  String? id = stdin.readLineSync();
  num idade = num.parse(id!);
  print("Sua idade: $idade ");
  num diasDeVida = idade * 365;
  print("Olá $nome, sua idade em dias é $diasDeVida");
  return '';
}

String? pegarNomeQuestao01() {
  print("Digite seu nome:");
  String? nomedigitado = stdin.readLineSync();
  return nomedigitado;
}

String questao02() {
  print("------ CALCULAR SALARIO DE FUNCIONARIO ------ ");
  num salarioMinimo = getNum("Digite o valor do salario mínimo: ");
  print("Quantos salarios minimos recebe?");
  String? quantidade = stdin.readLineSync();
  num quantidadeSalarioMinimo = num.parse(quantidade!);

  print("Nome do funcionario:");
  String? nome = stdin.readLineSync();

  print("Seu salario bruto é ${salarioMinimo * quantidadeSalarioMinimo} ");
  print(
      "Seu salario líquido é ${salarioMinimo * quantidadeSalarioMinimo * 0.7} ");
      print("Até mais $nome!");
  return '';
}

/// 
/// pega o valor de um numero via input no terminal
num getNum(String message){
  print(message);
  String? number = stdin.readLineSync();
  return num.parse(number!);
}

String questao03() {
  File('./csv/teste.txt').readAsString().then((String contents) {
    //print(contents);
    List<String> splitted = contents.split('\n');
    

    num salarioMinimo = getNum("Digite o valor do salario mínimo: ");

    splitted.forEach((element) => calcularSalario(element, salarioMinimo));
  });
  return '';
}

String calcularSalario(String element, num salarioMinimo) {
  final nomeQuantidade = element.split(', ');
  nomeQuantidade.forEach((el) => exibir(el, salarioMinimo));
  return '';
}

String exibir(String element, num salarioMinimo) {
  if (element == "") {
  } else {
    if (int.tryParse(element) != null) {
      num salario = int.parse(element) * salarioMinimo;
      print("Folha de pagamento: R\$ $salario ($element salários mínimos)");
    } else {
      print("nome: $element");
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
  return '''Quantidade de notas de 100 = $notas_100,
 Quantidade de notas de 50 = $notas_50,
 Quantidade de notas de 10 = $notas_10,
  Quantidade de notas de 5 = $notas_5,
  Quantidade de notas de 1 = $notas_1''';
}
