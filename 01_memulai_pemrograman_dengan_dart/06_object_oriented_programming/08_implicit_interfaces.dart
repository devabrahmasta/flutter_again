// Implicit Interface
// cara lain agar kita bisa menerapkan abstrakasi dalam oop adalah dengan interfaces
// interface adalah antarmuka yang menjadi penghubunga antara sesuatu yang abstrak dengan yang nyata
// seperti tombol tombol yang ada di HP kalian (interface), kita tidak perlu tahu bagaimana fungsi didalamnya berjalaan (abstrak)

// Dart tidak memiliki keyword atau syntax untuk mendeklarasikan interface 
// setiap class dapat bertindak sebagai intefaces, maka dari itu interface pada Dart dikenal sebagai implicit interface.
// Untuk mengimplementasikan interface, gunakan keyword implements.

// format : 
// class ClassName implements InterfaceName

// setelah kelas mengimplementasikan interface, maka kelas tersebut wajib mengimplementasikan semua metode 
// yang ada di dalam interface. misalnya kita buat kelas baru bernama Flyable yang akan bertindak sebagai interface.

class Flyable{
  void fly(){}
}

// kita dapat membiarkan body dari class tetap kosong, fungsi yang masih kosong akan dilakukan oleh class. 
// selanjutnya buat kelas baru yang mengimplementasi interface Flyable.

// class BirdExample extends Animal implements Flyable {
//   String featherColor;
//
//   BirdExample(String name, int age, double weight, this.featherColor) : super(name, age, weight);
//
// }

// kalian akan mendapati eror yang memberikan pesan “Missing concrete implementation of Flyable.fly”. 
// ini artinya kita harus mengimplementasi fungsi fly yang terdapat pada interface Flyable.

// anggep ini adalah file anima.dart, terus flyable tadi adalah flyable.dart.
// Semua class dalam satu file - urutan ga masalah!

// animal.dart : Class Animal bisa di atas, tengah, atau bawah
class Animal {
  String name = '';
  int age = 0;
  double weight = 0;

  Animal(this.name, this.age, this.weight);

  void eat() {
    print('$name is eating.');
    weight = weight + 0.2;
  }

  void sleep() {
    print('$name is sleeping.');
  }
}

// anggep class flyable yang ada di atas tadi itu sebagai flyable.dart
// bird.dart : Class Bird yang implements Flyable dan extends Animal
class Bird extends Animal implements Flyable {
  String featherColor;

  Bird(String name, int age, double weight, this.featherColor)
      : super(name, age, weight);

  @override
  void fly() {
    print('$name is flying with $featherColor feathers');
  }

  // @override itu mudahnya seperti "tulis ulangg".
  // Keyword atau anotasi @override menunjukkan fungsi tersebut mengesampingkan fungsi yang ada di interface atau kelas induknya,
  // lalu menggunakan fungsi yang ada dalam kelas itu sendiri sebagai gantinya.
}

// main.dart
void main() {
  var dicodingBird = Bird('Bird', 2, 0.8, 'Gray');
  
  dicodingBird.fly();   // dari Flyable interface
  dicodingBird.eat();   // dari Animal class
  dicodingBird.sleep(); // dari Animal class
  
  print('Feather color: ${dicodingBird.featherColor}');
  print('Weight after eating: ${dicodingBird.weight}');
}

// Output:
// Birdy is flying with Gray feathers
// Birdy is eating.
// Birdy is sleeping.
// Feather color: Gray
// Weight after eating: 1.0


