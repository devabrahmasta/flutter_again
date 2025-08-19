// Class
// class adalah blueprint untuk membuat object
// di dalam kelas kita bisa mendefinisakn sifat(attribute) dan perilaku(behaviour) dari objek yang mau dibuat

// sebagai contoh kelas dengan nama animal: 
// setiap kelas punya aattribute dan behaviour
//                   Animal
// + String name          
// + int age              > attribute kita definisikan dengan variabel
// + double weight

// - eat()
// - sleep()              > behaviour didefinisakn denngan function
// - poop()

// untuk membuat class kita cukup dengan keyword class diikuti namaa kelas yang dibuat.
// class Animal {    // format nama kelas itu => PascalCase (juga disebut UpperCamelCase).
// }

void main() {
  var dicodingCat = Animal('Gray', 2, 4.2);

  dicodingCat.eat();
  dicodingCat.poop();

  print(dicodingCat.weight);
}

class Animal{
  String name;
  int age;
  double weight;

  Animal(this.name, this.age, this.weight);

  void eat(){
    print('$name is eating ');
    weight += 0.2; 
  }
  void sleep(){
    print('$name is sleeping');

  }
  void poop(){
    print('$name is pooping');
    weight -= 0.1;
  }
}


