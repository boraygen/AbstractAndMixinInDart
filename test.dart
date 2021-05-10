abstract class Animal
{
  bool isAlive = true;
  void breathe();
  void makeNoise() => print("Making animal noises.");
}

mixin Swimmer
{
  void swim() => print("Animal swimming.");
}

mixin Walker
{
  void walk() => print("Animal walking.");
}

class Person extends Animal with Swimmer, Walker    //unlike the keyword "implements", "extends" keyword eliminates the need of overriding every method in abstract class
{
  String name, nationality;
  
  Person(this.name, this.nationality);
  
  @override
  void breathe() => print("Human breathing."); 
}

void main()
{
  Person person = new Person("bora", "tr");
  person.breathe();
  person.walk();
}
