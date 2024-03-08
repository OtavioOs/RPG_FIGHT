import 'monster_set.dart';

/*class SetPlayers {
  List<dynamic> definitiveDeck = [];
  int heart = 0;
  int shild = 0;
  Random aleatorio = Random();

  SetPlayers(Monster monstros, int numerodaCarta) {
    definitiveDeck = monstros.mistura(numerodaCarta);
  } //Aqui o resultado final, ao chamar na funçcao em 'MAIN' recebo so as cartas indicadas no funçao, sendo assim 'definitiveDeck' recebeu so os 5 elementos

  mostrarCartas() {
    for (var i = 0; i < 5; i++) {
      var nomeMonstro = definitiveDeck[i][0];
      var forcaMonstro = definitiveDeck[i][1][0];
      var defesaMonstro = definitiveDeck[i][1][1];
      var elementoMonstro = definitiveDeck[i][1][2];
      print('\n Carta Nº ${i + 1}'
          '\n$nomeMonstro \n'
          'Força: $forcaMonstro \n'
          'Defesa: $defesaMonstro \n'
          'Elemento: $elementoMonstro\n //');
    }
  }

  damegeLife(int vida) {
    heart -= vida;
    print('Heart $heart ////////\n'
        'Shild $shild //////');
  }

  restoryLife(int vida) {
    heart += vida;
  }

  damegeShild(int defesa) {
    shild -= defesa;
  }

  restoryShild(int defesa) {
    shild += defesa;
  }
}*/

class PlayerInfo extends CartasdeBaralho {
  String? nickName;
  int? heart;
  int? shild;

  PlayerInfo();

  setPlayer(String name) {
    nickName = name;
    heart = 100;
    shild = 100;
    setDeck();
  }

  mostrarCartas() {
    for (var i = 0; i < deckPlayer.length; i++) {
      var nomeMonstro = deckPlayer[i][0];
      var forcaMonstro = deckPlayer[i][1][0];
      var defesaMonstro = deckPlayer[i][1][1];
      var elementoMonstro = deckPlayer[i][1][2];
      print('\n Carta Nº ${i + 1}'
          '\n$nomeMonstro \n'
          'Força: $forcaMonstro \n'
          'Defesa: $defesaMonstro \n'
          'Elemento: $elementoMonstro\n //');
    }
  }

  mostrarCenario(var cartasCenario) {
    for (var i = 0; i < cartasCenario.length; i++) {
      var nomeMonstro = cartasCenario[i][0];
      var forcaMonstro = cartasCenario[i][1][0];
      var defesaMonstro = cartasCenario[i][1][1];
      var elementoMonstro = cartasCenario[i][1][2];
      print('\n Carta Nº ${i + 1}'
          '\n$nomeMonstro \n'
          'Força: $forcaMonstro \n'
          'Defesa: $defesaMonstro \n'
          'Elemento: $elementoMonstro\n //');
    }
  }

  removerCarta(List deck,int cartaSelect){
    deck.removeAt(cartaSelect);
    
  }


}
