// Inheritance
// masih ngomongin tentang object, beberapa object bisa memiliki karakteristik atau perilaku yang sama
// namun sebenarnya meraka bukanlah object yang sama.

// disini hadirlah inheritance atau pewarisan => membuat class baru dari class yang ada.
// konsep ini bisa diibaratkan anak yang mewarisi karakter dan perilaku orangtuanya,
// kelas yang menurunkan sifat disebut induk (parent class/superclass)
// sedangkan kelas yang mewarisi sifat disebut anak (child class/subclas).

// kembali lagi dengan contoh hewan, setiap hewan ada juga jenis hewan yang memiliki sifat sama
// baik itu nama, berat, dan umur. namun pasti ada perbedaan diantaranya contoh cara bergerak, bernafas dll.
// perhatikan tabel berikut : 
/*
Cat	              Fish	          Bird
+ name            + name          + name 
+ weight          + weight        + weight
+ age             + age           + age
+ furColor        + skinColor     + featherColor

- eat()           - eat()         - eat()
- sleep()         - sleep()       - sleep()
- poop()          - poop()        - poop()
- walk()          - swim()        - fly()
*/

// dsibandingkan membuat 3 kelas dan menuliskan ulang properti yang sama, 
// kita bisa memanfaatkan inheritance dengan mengelompokkan sifat yang sama:
/* 
Animal
+ name
+ weight
+ age
- eat()
- sleep()
- poop()

Cat	              Fish	          Bird
+ furColor	      + skinColor	    + featherColor
- walk()	        - swim()	      - fly() 
*/

// setelah membuat kelas Animal, kita dapat membuat kelas child dengan menggunakan keyword extends ke kelas parent

// class ChildClass extends ParentClass {
// ...
// }

// dengan begitu kita bisa membuat kelas Cat mewarisi kelas Animal.
// contoh file 1 animal.dart: (parent class) 
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

//  file 2 main.dart:  (child class)
class Cat extends Animal{
  //  ^ child     ^ parent
  final String furColor;

  Cat(String name, int age, double weight, String furColor) 
      : this.furColor = furColor,     // => maksudnya: isi property furColor milik objek ini dengan nilai dari parameter furColor yang dikirim user waktu bikin object.
      super(name, age, weight);   //=> ini cara mendefinisikan initializer list kalau ga cuma 1 (diisi koma diatasnya)

  void walk(){
    print('$name is walking');
  }
}

// karena kelas Cat adalah turunan dari kelas Animal, maka kita bisa mengakses sifat dan perilaku dari Animal melalui kelas Cat.
void main(){
  var dicodingCat = Cat('Grayson', 2, 2.2, 'Gray');

  dicodingCat.walk();
  dicodingCat.eat();
  dicodingCat.walk();
  dicodingCat.eat();
  dicodingCat.sleep();

  print(dicodingCat.weight);

}

// Inheritance constructor
// kalian sudah lihat constructor yang berisi super tadi kan?

    // Cat(String name, int age, double weight, this.furColor) 
    // : super(name, age, weight); 

// nah, kita tetep butuh constructor di sub class, kenapa? 
// karena yang diturunkan itu baru property dan method, constructor tidak, jadi harus diturunkan dari parent
// oleh sebab itu ketika membuat kelas Cat tanpa mendefinisikan constructor kita akan mendapatkan eror. 

// Cat(String name, int age, double weight) : super(name, age, weight);

// keyword super di atas akan diarahkan ke constructor dari kelas Animal.
// jika ingin menginisialisasikan nilai furColor melalui constructor, maka kita bisa menambahkan parameter di dalam constructor.

// Cat(String name, int age, double weight, String furColor) 
//    : this.furColor = furColor, super(name, age, weight);

// lebih ringkas : 
// Cat(String name, int age, double weight, this.furColor) : super(name, age, weight);

