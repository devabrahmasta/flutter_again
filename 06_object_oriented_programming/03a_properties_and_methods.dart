// Properties and Method
// kalian udah mempelajari tadi variabel dan function dalam class,
// di dalam class ini disebut property dan method
// property mempresentasikan attribute 
// method mempresentasikan behaviour atau perilaku
//                                                                            ignore_for_file: unused_local_variable, unused_element, unused_field

// class Animal {
//   String _name = '';
//   int _age = 0;
//   double _weight = 0;
// }

// oop memiliki konsep enkapsulation yang mana bisa menyembunyikan informasi di dalam object
// hingga tak bisa dilihat atau diubah. umumnya bahasa pemrograman memiliki visibility modifier
// tetapi dart tidak memiliki seperti private atau public
//
// untuk mengatasinya: kita bisa memakai import, jadikan class itu sebagai library, 
// dengan cara membuat file baru yang berisi class animal. jadi total ada 2 berkas/file

// file 1 : animal.dart
// class Animal{
//   String name = '';
//   int age = 0;
//   double weight = 0;

//   Animal(this.name, this.age, this.weight);

//   void eat() {
//     print('$name is eating.');
//     weight = weight + 0.2;
//   }

//   void sleep() {
//     print('$name is sleeping.');
//   }

//   void poop() {
//     print('$name is pooping.');
//     weight = weight - 0.1;
//   }
// }

// file 2 : main.dart
import '03b_animal.dart'; // => jadi kita seperti mengambil sumber dari file animal.dart 
void main() {
  var dicodingCat = Animal('Gray', 2, 4.2);

  dicodingCat.eat();
  dicodingCat.poop();

  print(dicodingCat.weight);

}
// property yang private hanya bisa diakses di file yang sama
// kita akan membutuhkannya jika tidak ingin diubah dari luar
// makanya kaita bisa akalin dengan menambahkan (_) underscore sebelum nama property:
  String _name = '';
  int _age = 0;
  double _weight = 0;

// jadi ketika sudah ditambahkan underscore udah gabisa lagi di diubah dari main. 
// solusinya, dengan menggunakan getter, setter untuk mendapatkan dan mengubah nilai 
// setter
  set name(String value){
    _name = value;
  }

  // getter
  double get weight => _weight;

// kalian juga bisa mengubah property dari pemanggilan method, seperti ini: 
  void eat() {
    print('$_name is eating.');
    _weight = _weight + 0.2;
  }
  
  void poop() {
    print('$_name is pooping.');
    _weight = _weight - 0.1;
  }

// sehingga keseluruhan file dapat dilihat di file 03_animal.dart seperti di bawah: 
// class Animal {
//   String _name = '';
//   int _age = 0;
//   double _weight = 0;
 
//   Animal(this._name, this._age, this._weight);
 
//   // Setter
//   set name(String value) {
//     _name = value;
//   }
 
//   // Getter
//   double get weight => _weight;
//   int get age => _age;
 
//   // Methods
//   void eat() {
//     print('$_name is eating.');
//     _weight = _weight + 0.2;
//   }
 
//   void sleep() {
//     print('$_name is sleeping.');
//   }
 
//   void poop() {
//     print('$_name is pooping.');
//     _weight = _weight - 0.1;
//   }
// }

