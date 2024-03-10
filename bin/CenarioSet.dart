import 'player_set.dart';

class SetCenario extends PlayerInfo {
  var cenarioAtivo = [];
  String? cartarRetorno;
  int rodada = 0;

  SetCenario();

  mostrarEscolha() {
    var quantidadeBaralho = cenarioAtivo.length + 1;
    if (quantidadeBaralho >= 0) {
      print('///Carta escolhida///\n'
          'Nome: ${cenarioAtivo[0][0]}\n'
          'Força: ${cenarioAtivo[0][1][0]}\n'
          'Defesa: ${cenarioAtivo[0][1][2]}\n'
          'Elemento: ${cenarioAtivo}');
    }
  }

  selecionarCarta(List baralho, var entreTodos) {
    cenarioAtivo.add(baralho[entreTodos]);

    removerCarta(baralho, entreTodos);
  }
}
