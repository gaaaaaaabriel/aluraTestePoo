import 'dart:ffi';

import 'funcao/is_madura.dart';

void main() {
  String nome = "laranja";
  double peso = 100.2;
  String cor = "Verde e amarela";
  String sabor = "Azeda";
  int colhidaA = 40;
  //bool isMadura = funcEstaMadura(diasDeColheita);
  //int varie = funcQuantosDiasFaltam(diasDeColheita);
  //var teste = estaMadura(nome, diasDeColheita, cor: cor);

  Fruta fruta01 = Fruta(cor, nome, peso, colhidaA);
  Fruta fruta02 = Fruta("Roxa", "Uva", 2.25, 10);
  
  fruta02.estaMadura(100, colhidaA);
  fruta01.estaMadura(30, colhidaA);
  //print(fruta01);
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String? sabor;
  bool? isMadura;
  int colhidaA;
  Fruta(this.cor, this.nome, this.peso, this.colhidaA, {this.sabor});

//esse metodo ira funcionar independente da fruta
  estaMadura(diasParaMadurar, foiColhida) {
    isMadura = foiColhida >= diasParaMadurar;

    print(
        "O $nome foi escolhida á $colhidaA dias, e precisa de $diasParaMadurar para podercomer. Ela esta madura: $isMadura");
  }
}

int funcQuantosDiasFaltam(int dias) {
  int diasParaMadurar = 30;
  int quantosDiasFaltam = diasParaMadurar - dias;
  //print(quantosDiasFaltam);
  return quantosDiasFaltam;
}

estaMadura(String nome, int dias, {required String? cor}) {
  if (dias <= 39) {
    print("A $nome esta azeda da cor $cor");
  } else {
    print("A $nome esta doce da cor $cor");
  }
}

bool funcEstaMadura(int dias) {
  if (dias <= 40) {
    return false;
  } else {
    return true;
  }
}
