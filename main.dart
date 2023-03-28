class Color {
  final String name;

  Color(this.name);

  @override
  String toString() {
    return name;
  }
}

abstract class Animal {
  final String nome;
  final Color cor;
  final String sexo;

  Animal(this.nome, this.cor, this.sexo);
}

abstract class Felino extends Animal {
  double alturadopulo;

  Felino(super.nome, super.cor, super.sexo, this.alturadopulo);
}

class Gato extends Felino {
  Gato(super.nome, super.cor, super.sexo, super.alturadopulo);

  @override
  String toString() {
    return 'O gato $nome tem a cor $cor, o sexo $sexo e pula $alturadopulo metros';
  }
}

class Leao extends Felino {
  double comprimentoJubaCm;

  Leao(super.nome, super.cor, super.sexo, super.alturadopulo,
      this.comprimentoJubaCm);

  @override
  String toString() {
    return 'O leão $nome tem a cor $cor, o sexo $sexo, pula $alturadopulo metros e tem a juba de $comprimentoJubaCm cm';
  }
}

class Dog extends Animal {
  double mordida;
  Dog(this.mordida, super.cor, super.nome, super.sexo);

  @override
  String toString() {
    return 'O cachorro ${nome} tem a cor ${cor}, o sexo ${sexo} e força de mordida em ${mordida} kilos';
  }
}

void main() {
  final animais = <Animal>[];

  animais.add(Dog(40.5, 'Rex', Color('Branca'), 'macho'));

  animais.add(Gato('tom', Color('preta'), 'femea', 2.05));
  animais.add(Leao('Alex', Color('Dourado'), 'macho', 40.5, 20.2));

  print('Você tem ${animais.length} animais');

  for (var i = 0; i < animais.length; i++) {
    var animal = animais[i];

    if (animal is Dog) {
      print('late');
    }
    print(animal);
  }
}
