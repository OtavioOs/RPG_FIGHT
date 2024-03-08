import 'player_set.dart';

class SetCenario extends PlayerInfo {
  var cenarioAtivo = [];
  String? cartarRetorno;
  int rodada = 0;

  SetCenario();

  selecionarCarta(List baralho, var entreTodos) {
    if (rodada <= 0) {
      cenarioAtivo.add(baralho[entreTodos]);
      rodada += 1;
      print('Carta escolhida... ${baralho[entreTodos][0]} \n'
          'Seu lado da mesa contém a carta \n'
           'Nome: ${cenarioAtivo[0][0]}');
      removerCarta(baralho, entreTodos);
      print("Deck mão novamente");
    } else {
      cenarioAtivo.add(baralho[entreTodos]);
      rodada += 1;
      print('Seu lado da mesa contém as cartas');
      for (var i = 0; i < cenarioAtivo.length; i++) {
         print('Nome: ${cenarioAtivo[i][0]}');
         
         print("Deck mão novamente");
      }
      removerCarta(baralho, entreTodos);
      mostrarCenario(cenarioAtivo);
    }
  }
}
