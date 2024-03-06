import 'dart:math';
import 'monster_set.dart';

/*
dynamic funcBaralhomobs() {
  List<dynamic> mosntros = [
    [
      'Orgro Putaço',
      [275, 45, 'Terra']
    ],
    [
      'Fada Guerreira',
      [147, 187, 'Ar']
    ],
    [
      'Dragão Flamejante',
      [350, 300, 'Fogo']
    ],
    [
      'Espectro Sombrio',
      [200, 150, 'Sombra']
    ],
    [
      'Hidra Venenosa',
      [280, 120, 'Água']
    ],
    [
      'Ciclope Brutal',
      [310, 250, 'Terra']
    ],
    [
      'Gárgula Petrificante',
      [180, 220, 'Pedra']
    ],
    [
      'Minotauro Selvagem',
      [260, 180, 'Terra']
    ],
    [
      'Aracnídeo Voraz',
      [190, 160, 'Veneno']
    ],
    [
      'Elemental de Terra',
      [240, 210, 'Terra']
    ],
    [
      'Esqueleto Decrépito',
      [130, 100, 'Sombra']
    ],
    [
      'Quimera Vorpal',
      [320, 270, 'Fogo']
    ],
    [
      'Goblin Carniceiro',
      [150, 130, 'Sombra']
    ],
    [
      'Banshee Uivante',
      [200, 180, 'Ar']
    ],
    [
      'Cerberus Infernal',
      [300, 250, 'Fogo']
    ],
    [
      'Harpia Sanguinária',
      [230, 190, 'Ar']
    ],
    [
      'Lobisomem Aterrorizante',
      [270, 220, 'Sombra']
    ],
    [
      'Manticora Voraz',
      [290, 240, 'Veneno']
    ],
    [
      'Zumbi Devorador',
      [170, 140, 'Sombra']
    ],
    [
      'Espreitador das Sombras',
      [210, 200, 'Sombra']
    ],
  ];
  List<dynamic> magias = [
    [
      'Bola de Fogo',
      [20, 0, 'Fogo']
    ],
    [
      'Raio Congelante',
      [18, 0, 'Gelo']
    ],
    [
      'Curar Ferimentos',
      [0, 20, 'Cura']
    ],
    [
      'Escudo Mágico',
      [0, 25, 'Arcano']
    ],
    [
      'Invocação do Vento',
      [15, 5, 'Vento']
    ],
    [
      'Toque Elétrico',
      [22, 0, 'Raio']
    ],
    [
      'Barreira de Gelo',
      [0, 23, 'Gelo']
    ],
    [
      'Explosão Arcana',
      [25, 0, 'Arcano']
    ],
    [
      'Terremoto Mágico',
      [28, 0, 'Terra']
    ],
    [
      'Flecha Sombria',
      [21, 0, 'Sombra']
    ],
    [
      'Torrente Aquática',
      [17, 3, 'Água']
    ],
    [
      'Ilusão Perturbadora',
      [0, 26, 'Ilusão']
    ],
    [
      'Dreno Vital',
      [12, 0, 'Necromancia']
    ],
    [
      'Clarão de Luz',
      [23, 0, 'Luz']
    ],
    [
      'Tempestade Elétrica',
      [27, 0, 'Raio']
    ],
    [
      'Muralha de Pedra',
      [0, 28, 'Terra']
    ],
    [
      'Rajada Venenosa',
      [14, 0, 'Veneno']
    ],
    [
      'Círculo de Proteção',
      [0, 24, 'Arcano']
    ],
    [
      'Explosão de Energia',
      [26, 0, 'Arcano']
    ],
    [
      'Chama Sagrada',
      [19, 0, 'Luz']
    ],
  ];

  var monstros =
      Monster(mosntros, magias); //Monstros enviado para a Classe SetMonster.
  var player = SetPlayers(monstros,
      5); //Segundo, Criando uma varievel player para chamar SetPlayer, com o Return da variavel monstros que possui agora a Lista
  player.mostrarCartas(); //lista dentro da classe 'SetPlayer'
  var player2 = SetPlayers(monstros, 5);
}
*/

funcCenario() {
  var random = Random();
  var cenarios = [
    'Floresta Mortal',
    'Mar de agua negras',
    'Terra seca',
    'Entre Nuvens Pegajosas'
  ];
  var valorCenario = random.nextInt(cenarios.length);
  var cenarioAplicado = cenarios[valorCenario];
  return cenarioAplicado;
}

verificElement(String terreno, List deck) {
  var floresta = ['Sombra', 'Veneno', 'Fogo', 'Luz', 'Cura'];
  var mar = ['Agua', 'Gelo', 'Raio'];
  var terra = ['Terra', 'Pedra', 'Ilusão', 'Arcano'];
  var nuvem = ['Ar', 'Fogo', 'Vento', 'Necromancia'];
  var deckOtiginal = deck;
  CartasdeBaralho monster = CartasdeBaralho();

  List<dynamic> deckRetorno =[];

//////////////////////////////////////////////////////////
///       função para Verificar o elemento das cartas
///       vindo da mão do Player1.
///     ~~Na variavel 

    //Neste ponto as cartas que estão iguais a lista de Elementos batem e jogam o deckRetorno com as cartas.
    //Jogando o deckRetorno para o metodo em monster_set.
    //print('\n $deckRetorno Retorno do baralho'); 

  if (terreno == 'Floresta Mortal') {
    for (var i = 0; i < deck.length; i++) {
      if (floresta.contains(deck[i][1][2])) {
        var retornoDeck = monster.atribuirStatus(deck[i], deckOtiginal, 100);
        deckRetorno.add(retornoDeck);
      }
    }
  } if (terreno == 'Mar de agua negras') {
      for (var i = 0; i < deck.length; i++) {
        if (mar.contains(deck[i][1][2])) {
          var retornoDeck = monster.atribuirStatus(deck[i], deckOtiginal, 80);
          deckRetorno.add(retornoDeck);
        }      
      }
    }if (terreno == 'Terra seca') {
      for (var i = 0; i < deck.length; i++) {
        if (terra.contains(deck[i][1][2])) {
          var retornoDeck = monster.atribuirStatus(deck[i], deckOtiginal, 120);
          deckRetorno.add(retornoDeck);
        }      
      }      
    }if (terreno == 'Entre Nuvens Pegajosas') {
      for (var i = 0; i < deck.length; i++) {
        if (nuvem.contains(deck[i][1][2])) {
          var retornoDeck = monster.atribuirStatus(deck[i], deckOtiginal, 160);
          deckRetorno.add(retornoDeck);
        }      
      }      
    }
  
}