import 'player_set.dart';

class SetCenario extends PlayerInfo {
  var cenarioAtivo = [];
  String? cartarRetorno;
  int rodada = 0;

  SetCenario();

  mostrarEscolha() {
    var quantidadeBaralho = cenarioAtivo.length;
    if (quantidadeBaralho >= 0) {
      print('///Carta escolhida///\n'
          'Nome: ${cenarioAtivo[rodada][0]}\n'
          'Força: ${cenarioAtivo[rodada][1][0]}\n'
          'Defesa: ${cenarioAtivo[rodada][1][2]}\n');
      rodada++;
    }
  }

  selecionarCarta(List baralho, var entreTodos) {
    cenarioAtivo.add(baralho[entreTodos]);

    removerCarta(baralho, entreTodos);
  }
}
