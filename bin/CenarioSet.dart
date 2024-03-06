import 'player_set.dart';

class SetCenario extends PlayerInfo{
  var cenarioAtivo = [];
  String? cartarRetorno;
  int rodada = 0;

  SetCenario();

selecionarCarta(var baralho, var entreTodos){
  rodada+=1;
  if (rodada <= 0) {
    cenarioAtivo.add(baralho[entreTodos]);
    //print('Carta escolhida... ${baralho[entreTodos][0]} \n'
     //   'Seu lado da mesa contém a carta \n'
       // 'Nome: ${cenarioAtivo[0][0]}');   
  } else {
    cenarioAtivo.add(baralho[entreTodos]);
    //print('Seu lado da mesa contém as cartas');
    for (var i = 0; i < cenarioAtivo.length; i++) {
     // print('Nome: ${cenarioAtivo[i][0]}');
    }

    
    mostrarCenario(cenarioAtivo);
  }
}

removerCarta(int numeroCarta){

  cenarioAtivo.removeAt(numeroCarta);
  
}

attackCart(){

}

}
