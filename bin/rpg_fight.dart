import 'dart:math';

import 'CenarioSet.dart';
import 'player_set.dart';
import 'func_geral.dart';
import 'dart:io';

void main() {
  print('///////////////////////////////////////////////////// \n'
      '////////////Tabulheiro de Cartas Mágicas/////////////\n'
      'Nick Name Player: ');
  String? nickName = stdin.readLineSync();
  print('Distribuindo cartas ao Jogar...');
  PlayerInfo criarPlayer = PlayerInfo();
  PlayerInfo criarPlayer2 = PlayerInfo();
//////////////////////////////////////////////////////////
//           Instanciação dos Jogadores   
///     ~~~ Nesse caso é enviado a PlayerInfo o nome
///     ~~~ Proxima linha Mostra as cartas com Método
///         de Organização das cartas e Listagem
//////////////////////////////////////////////////////////
  criarPlayer2.setPlayer('Jogador 2');
  criarPlayer.setPlayer('$nickName');
  

//////////////////////////////////////////////////////////
///     Variaveis uteis sobre jogador
///     ~~~~ Heart e Shild temporavel
///     ~~~ cenar = funcCcenatio Vai gerar o Campo de
///         Batalha
//////////////////////////////////////////////////////////
  var vida = criarPlayer.heart;
  var defesa = criarPlayer.shild;
  var nome = criarPlayer.nickName;
  var cenar = funcCenario();
  var decks0 = criarPlayer.deckPlayer;
  var decks1 = criarPlayer2.deckPlayer;
  


//////////////////////////////////////////////////////////
///     ~~~Função "verificElement", está enviando:
///         "value 1" o cenario gerado 
///         "valeu 2" decks, variavel do deck gerado
///         ao player. Neste caso apenas o Player1 está
///         sendo enviado, testado.
//////////////////////////////////////////////////////////
  print('$nome $defesa $vida');
  print('\n Vamos ao Cenário \n Carregando.... \n'
      '\n Que inicie a Batalha...');
  //Seguinte comando manda o deck Primario(master). 
    
  verificElement(cenar, decks0);   
  verificElement(cenar, decks1); 

  print('****** Novos valores de Força Foram atualizados ****** \n'
        '--- $cenar ---- \n ');
  criarPlayer.mostrarCartas();
  SetCenario ladodaMesa = SetCenario();
  SetCenario ladodaMesa1 = SetCenario();

while (vida! > 0) {
  print('Escolha sua carta!');
  String? escolha = stdin.readLineSync();
  var escolha1 = int.parse('$escolha');
  ladodaMesa.selecionarCarta(decks0, escolha1-1);
  Random jogador2 = Random();
  var cartaJogador2 = jogador2.nextInt(decks1.length);
  ladodaMesa1.selecionarCarta(decks1, cartaJogador2);

  
  

}


//////////////////////////////////////////////////////////////////////////////////
//Esta Instancia seleciona 1 carta e adiciona no lado do jogar
//em SetCenario, dentro do cenarioAtivo, que é a variavel para o lado do jogador.
//////////////////////////////////////////////////////////////////////////////////


  
  //print('Esolheu mais 1 para o cenario....');
 // ladodaMesa.selecionarCarta(decks0, 2);
 // print('Lado da mesa Player 1 com 2 cartass $ladoplayer1');
 // ladodaMesa.removerCarta(1);
  //print('Lado da mesa Player 1 removido 1 carta $ladoplayer1');

 // var ladoplayer2 = ladodaMesa1.selecionarCarta(decks1, 3);
 // print('Lado da mesa Player 2 $ladoplayer2');
        

 // print('$decks0 \n Deck0 \n \n $decks1');
}
