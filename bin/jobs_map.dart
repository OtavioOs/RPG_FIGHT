import 'dart:io';

class BancodeDados {
 
 static Map<String,dynamic> _banco = {};
  

  BancodeDados();

  receberDados(String nome, List valores) {
    String nomelow = nome.replaceFirst(nome[0], nome[0].toUpperCase());

    /*int nomeCompleto = nome.indexOf(" ");
    String nomeSegundo = '';
    for (var i = nomeCompleto+1; i < nomelow.length; i++) {
      nomeSegundo += nomelow[i];
    }
    print(nomeSegundo);*/
    

    if (_banco.containsKey(nomelow)) {
      print('Nome já registrado. Não foram feitas as alterações no Map.');
    }else{
      _banco[nomelow] = valores;
    }
    return _banco;
  }

  get viewAllDB{
    return _banco;
  }

  visualizarDados(String nome){
    String nomelow = nome.replaceFirst(nome[0], nome[0].toUpperCase());
    if (_banco[nomelow] == null) {
      print('Nada encontrado');
    } else {
        var chaveDados = _banco[nomelow];
        final int idade = chaveDados[0];
        final double altura = chaveDados[1];
        final String email = chaveDados[2];
        print('Nome: $nomelow \nIdade: $idade \nAltura: $altura \nE-mail: $email');
    }
  }
}

void main() {
  BancodeDados banco = BancodeDados();
  while (true) {
    print('\n1 = Adicionar\n2 = Visualizar\n');
    String? visualizar = stdin.readLineSync();
    if (visualizar == "") {
      break;
    } else {
      switch (visualizar) {
        case "1":
          print('Nome Completo');
          String? nome = stdin.readLineSync();
          print('Idade');
          String? idade1 = stdin.readLineSync();
          int idade = int.parse('$idade1');
          print('Altura');
          String? altura1 = stdin.readLineSync();
          double altura = double.parse('$altura1');
          print('E-mail');
          String? email = stdin.readLineSync();
          List<dynamic> valores = [idade, altura, '$email'];
          banco.receberDados('$nome', valores);
          print(banco.viewAllDB);
        case "2":
          print('Qual Nome');
          String? nome = stdin.readLineSync();
          banco.visualizarDados('$nome');
        break;
        default:
      }
    }
  }
}
