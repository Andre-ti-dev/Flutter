void main() {
  final people = {'André Luiz': 26, 'Vitória Nadejda': 24};

  for (var name in people.keys) {
    print('Nome: $name \t Idade: ${people[name]}');
  }
}
