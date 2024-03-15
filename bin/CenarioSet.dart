import 'abstract_class.dart';
import 'player_set.dart';
import 'dart:io';

class SetCenario extends PlayerInfo implements InteracaoListas{
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

  atacarCarta(var jogadorVez, List deckMao, List deckOponente, int cartaMao,
      int cartaOponente, int heart1, int? shild1, int? heart2, int? shild2) {
    int forca1 = deckMao[cartaMao - 1][1][0];
    int forca2 = deckOponente[cartaOponente - 1][1][0];
    print('Vida player1: $heart1, Defesa: $shild1 \n'
        'Vida player2: $heart2 , Defesa: $shild2');

    if (forca1 > forca2) {
      print('Carta ${deckMao[cartaMao - 1][0]} tem Maior força de Ataque.');
      heart2 = heart2! - 50;
      print('Vida player1: $heart1, Defesa: $shild1 \n'
          'Vida player2: $heart2 , Defesa: $shild2');
      deckOponente.removeAt(cartaOponente - 1);
      return heart2;
    } else {
      print('Não tem força o suficiente para matar');
    }
  }

  @override
  visualisarCenario(List cartasEmCenario, String jogador) {
    // TODO: implement visualisarCenario
    throw UnimplementedError();
  }

  @override
  navPlayer() {
        print('////////////// Escolha uma Ação //////////////\n' //
        '1 - Escolher Carta na mão \n' //
        '2 - Olhar Cartas na mão \n' //
        '3 - Olhar Cartas no Cenário \n' //
        '4 - Atacar uma Carta no Cenário \n'
        '5 - Sair'); //
    ////////////////////////////////////////////////////////////

    String? acaoEscolha = stdin.readLineSync();
    //int acaoEscolha1 = int.parse('$acaoEscolha');

    return acaoEscolha;
    
  }
}
