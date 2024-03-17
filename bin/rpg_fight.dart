import 'dart:math';
import 'CenarioSet.dart';
import 'player_set.dart';
import 'func_geral.dart';
import 'dart:io';

void main() async {
//////////////////////////////////////////////////////////
  ///              Instanciação dos Jogadores
  ///     ~~~ Nesse caso é enviado a PlayerInfo o nome
  ///     ~~~ Proxima linha Mostra as cartas com Método
  ///         de Organização das cartas e Listagem
  PlayerInfo criarPlayer = PlayerInfo();
  PlayerInfo criarPlayer2 = PlayerInfo();
  SetCenario ladodaMesa = SetCenario();
  SetCenario ladodaMesa1 = SetCenario();
  final String? nickName;
//||||||||||||||||||||||||||||||||||||||||||||||||||||||\\

  print('                 ████████  ████████  ████████');
  print('                 ██    ██  ██    ██  ██');
  print('                 ██    ██  ██    ██  ██');
  print('                 ████████  ████████  ██  ████');
  print('                 ████      ██        ██    ██');
  print('                 ██  ██    ██        ██    ██');
  print('                 ██    ██  ██        ████████');

  print('     ///////////////////////////////////////////////////// \n'
      '    ////////////Tabuleiro de Cartas Mágicas/////////////');
  print('                     Nick Name Player: ');
  nickName = stdin.readLineSync();
  print('                Distribuindo cartas ao Jogar.');
/////////////////////////////////////////////////////////////////
/////            Criou os Jogadores para balalhar            ////
  criarPlayer2.setPlayer('Jogador 2');
  criarPlayer.setPlayer('$nickName');
//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||\\

/////////////////////////////////////////////////////////////////
  ///                 Variaveis uteis sobre jogador
  ///         ~~~ Heart e Shild temporavel
  ///         ~~~ cenar = funcCcenatio Vai gerar o Campo de
  ///             Batalha
  var vida = criarPlayer.heart;
  var defesa = criarPlayer.shild;
  var vida2 = criarPlayer2.heart;
  var defesa2 = criarPlayer2.shild;
  //var nome = criarPlayer.nickName;
  var cenar = funcCenario();
  var decks0 = criarPlayer.deckPlayer;
  var decks1 = criarPlayer2.deckPlayer;
  var nav1 = true;
  var exitAction = await Future.delayed(Duration(seconds: 2));
//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||\\

/////////////////////////////////////////////////////////////////
  ///         ~~~Função "verificElement", está enviando:
  ///         "value 1" o cenario gerado
  ///         "valeu 2" decks, variavel do deck gerado
  ///         ao player. Neste caso apenas o Player1 está
  ///         sendo enviado, testado.
  print('                     Vamos ao Cenário \n'
      '                       Carregando.... \n'
      '                   Que inicie a Batalha...');
  verificElement(cenar, decks0);
  verificElement(cenar, decks1);
  print('   ****** Novos valores de Força Foram atualizados ****** \n'
      '                --- $cenar ---- \n ');

//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||\\

  while (nav1 == true && vida2! > 0) {
    var acaoEscolha = ladodaMesa.navPlayer();
    exitAction;
    //String? acaoEscolha = stdin.readLineSync();

    if (acaoEscolha == null || acaoEscolha.isEmpty) {
      print('Escolha uma opçao!');
      sleep(Duration(seconds: 2));
    } else if (acaoEscolha.contains(RegExp(r'[a-zA-Z]'))) {
      print('Escolha uma opção Válida!');
      sleep(Duration(seconds: 2));
    } else {
      int acaoEscolha1 = int.parse('$acaoEscolha');
      bool retornarMenu = true;
      exitAction;
      switch (acaoEscolha1) {
        case 1:
          while (retornarMenu == true) {
            print('Escolha sua carta!');
            String? escolha = stdin.readLineSync();
            var escolha1 = int.parse('$escolha');
            ladodaMesa.selecionarCarta(decks0, escolha1 - 1);
            ladodaMesa.mostrarEscolha();

            print('Jogador 2 Escolhendo Carta....');
            await Future.delayed(Duration(seconds: 5));
            //sleep(Duration(seconds: 2));
            Random jogador2 = Random();
            var cartaJogador2 = jogador2.nextInt(decks1.length);
            ladodaMesa1.selecionarCarta(decks1, cartaJogador2);
            retornarMenu = false;
          }
        case 2:
          criarPlayer.mostrarCartas();
          exitAction;
        case 3:
          criarPlayer.mostrarCenario(ladodaMesa.cenarioAtivo);
          criarPlayer.mostrarCenario(ladodaMesa1.cenarioAtivo);
          exitAction;
        case 4:
          print(
              'Esolha sua carta para Atacar, e selecione a Carta do Oponente.\n'
              'Sua Carta: ');
          String? cartaAtaque = stdin.readLineSync();
          int cartaAtaque1 = int.parse('$cartaAtaque');
          print('Escolha a Carta do Oponente: \n'
              'Carta Oponente: ');
          String? cartaSofre = stdin.readLineSync();
          int cartaSofre1 = int.parse('$cartaSofre');
          vida2 = ladodaMesa.atacarCarta(
              'jogardo1',
              ladodaMesa.cenarioAtivo,
              ladodaMesa1.cenarioAtivo,
              cartaAtaque1,
              cartaSofre1,
              vida!,
              defesa,
              vida2,
              defesa2);
        case 5:
          nav1 = false;

          break;
        default:
      }
    }
    if (acaoEscolha == '5') {
      print('Você saiu do jogo!');
    } else if (vida2 == 0) {
      print('Fim de jogo! \n'
          'Vencedor é $nickName');
    } else if (vida == 0) {
      print('Fim de jogo! \n'
          'Vencedor é Jogador2');
    }
  }
}
