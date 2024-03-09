abstract class InteracaoListas{


  InteracaoListas();

  visualisarCenario(List cartasEmCenario, String jogador){

    for (var i = 0; i < cartasEmCenario.length; i++) {
      var nomeMonstro = cartasEmCenario[i][0];
      var forcaMonstro = cartasEmCenario[i][1][0];
      var defesaMonstro = cartasEmCenario[i][1][1];
      var elementoMonstro = cartasEmCenario[i][1][2];

      print('Cartas no lado do $jogador \n'
            'Carta Nº ${i+1} \n'
            'Nome: $nomeMonstro\n'
            'Força: $forcaMonstro \n'
            'Defesa: $defesaMonstro \n'
            'Elemento: $elementoMonstro \n');
    }

  }
}