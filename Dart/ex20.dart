void main() {
  final people = [
    Person("André Luiz da Silva", "M", 26),
    Person("Vitória Nadejda", "F", 24)
  ];

  print("NAME \t\t\tGENDER \tAGE");

  for (Person person in people) {
    if (person.gender == "F") {
      print("${person.name} \t${person.gender} \t${person.age}");
    }
  }
}

class Person {
  String name;
  String gender;
  int age;

  Person(this.name, this.gender, this.age);
}
