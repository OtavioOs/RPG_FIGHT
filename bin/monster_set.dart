
import 'dart:math';

/*class Monster {

  List<dynamic> _monsters;
  List<dynamic> _magics;
  

  Monster(this._monsters, this._magics); //Recebido a lista de Monstros da função em 'MAIN'. Entrada de informação.

  List<dynamic> mistura(int cartMonster){
    var random = Random();
    List<dynamic> deckEnd = [];
for (var i = 0; i < 3; i++) {
  var valor = random.nextInt(_monsters.length);
  deckEnd.add(_monsters[valor]);
}
for (var i = 0; i < 2; i++) {
  var valor = random.nextInt(_monsters.length);
  deckEnd.add(_magics[valor]);
}
    return deckEnd.take(cartMonster).toList();
  }

}*/

class CartasdeBaralho {
  List<dynamic> mobsCarts = [
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
  List<dynamic> magicsCarts = [
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
  List<dynamic> deckPlayer = [];

  CartasdeBaralho();

  setDeck() {
    Random aleatorio = Random();
    for (var i = 0; i < 3; i++) {
      var valor = aleatorio.nextInt(mobsCarts.length);
      deckPlayer.add(mobsCarts[valor]);
    }
    for (var i = 0; i < 2; i++) {
      var valor = aleatorio.nextInt(magicsCarts.length);
      deckPlayer.add(magicsCarts[valor]);
    }
    return deckPlayer;
  }

  atribuirStatus(var cartMob, var deckOriginal, int forcaUp) {
    //como receber o deck, atribuir novo valor de força por causa do cenario e retornar com novo valor
   //Neste ponto as cartas chegam atravez dos parametros e cada uma delas recebem o valor 
   //que soma da força com o valor do Cenario. 
    List<dynamic> retornoMao = [];
      cartMob[1][0] += forcaUp;
      retornoMao.add(cartMob);
    return retornoMao;
  }
}
