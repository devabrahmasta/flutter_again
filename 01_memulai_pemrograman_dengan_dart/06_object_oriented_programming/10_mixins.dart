// Mixins 

/// mizin adalah cara menggunakan kembali kode kelas dalam banyak hirarki kelas.
/// Konsep mixin mungkin adalah konsep yang baru bagi anda karena konsep ini tidak ada pada bahasa c# atau java/
/// jadi kenapa dan kapan kita perlu menggunakan mixin?
/// 
/// kita kembali menggunakan hewan:
/*
=============================================================================
                        ANIMAL CLASS HIERARCHY DIAGRAM
=============================================================================

Legend:
🟧 Walk    🟦 Swim    🟫 Fly
                                    ┌─────────────┐
                                    │   Animal    │ (Parent Class)
                                    └─────────────┘
                                           │
                  ┌────────────────────────┼────────────────────┐
                  │                        │                    │
            ┌─────────────┐         ┌─────────────┐    ┌─────────────┐
            │   Mammal    │         │    Bird     │    │    Fish     │
            └─────────────┘         └─────────────┘    └─────────────┘
                  │                        │                     │
        ┌─────────┼─────────┐              ├─────────┐           ├─────────┐
        │         │         │              │         │           │         │
  ┌─────────┐ ┌─────────┐ ┌─────────┐ ┌─────────┐ ┌─────────┐ ┌─────────┐ ┌─────────┐
  │ Dolphin │ │   Bat   │ │   Cat   │ │  Dove   │ │  Duck   │ │  Shark  │ │ Flying  │
  │   🟦    │ │ 🟧 🟫  │ │   🟧   │ │ 🟧 🟫  │ │ 🟧 🟦  │ │   🟦   │ │ Fish 🟫 │
  └─────────┘ └─────────┘ └─────────┘ └─────────┘ └─────────┘ └─────────┘ └─────────┘
*/

/// kita memiliki superclass Animal dengan tiga subclass. di bawahnya ada beberapa kelas turunan yang memiliki perilaku berbeda-beda/
/// Beberapa hewan memiliki perilakau yang sama seperti cat dan duck sama sama bisa berjalan.
/// kita bisa membuat kelas seperti walkable, swimmable, dan flyable.
/// sayangnya, dart tidak mendukung multiple inheritance, sehingga sebuah kelas hanya bsia mewarisi satu kelas induk.
/// kita bisa saja membuat interface lalu mengimplementasikannya ke kelas cat atau duck.
/// namun, implementasi interface mengharuskan kita untuk meng-override method dan membuat implementasi fungsi di masing masing kelas.

mixin Flyable {
  void fly() {
    print("I'm flying");
  }
}
 
mixin Walkable {
  void walk() {
    print("I'm walking");
  }
}
 
mixin Swimmable {
  void swim() {
    print("I'm swimming");
  }
}

/// kelas mixin dapat didefinisikan dengan keyword class seperti kelas pada umumnya. jika anda tidak ingin kelasnya bertindak seperti kelas biasa misalnya seperti
/// bisa diinstansiasi menjadi object, gunakan saja keyword mixin. setelah membuat kelas seperti di atas kita bisa 
/// menambahkan sebagai mixin dengan keyword with dan diikuti dengan satu atau beberapa kelas mixin 

// class Animal {
//   void eat() => print("eating");
// }

// void main() {
//   var hewan = Animal();  // ← INI NAMANYA DIINSTANSIASI!
//   hewan.eat();
// }
class Mammal{}
class Bird{}

class Cat extends Mammal with Walkable { }


 
class Duck extends Bird with Walkable, Flyable, Swimmable { }

/// dengan mixin ini memungkinkan object cat untuk memanggil metode walk(). 
/// sementara object duck bisa memanggil metode walk(), fly(), dan swim()

// void main() {
//   var donald = Duck();
//   var garfield = Cat();
 
//   garfield.walk();
 
//   donald.walk();
//   donald.swim();
// }

/// jika diperhatikan mixin ini memang mirip dengan multiple inheritance. 
/// namun kelas mixin ini tidak termasuk ke dalam hirarki parent-child atau inheritance. 
/// oleh sebaba itu mixin memungkinkan kita terehindar dari masalah yang sering terjadi pada multiple inheritancc yang dikenal dengan diamond problem,
/// yaitu ada dua parent class yang memiliki method dengan nama yang sama sehingga child class-nya ambigu mau jalanin method yang mana.

// sebagai contoh kita punya kelas Performer:
abstract class Performer{
  void perform();
}

// lalu kita punya dua kelas turunan Performer:
class Dance extends Performer{
  @override
  void perform(){
    print('Dancing');
  }
}

class Sing extends Performer{
  @override
  void perform(){
    print('Singing');
  }
}

// asumsikan dart memiliki dukungan terhadap multiple inheritance sehingga kita punya 1 kelas lagi seperti berikut:
// class Musician extends Dancer, Singer {
//   void showTime() {
//     perform();
//   }
// }

// kira-kira method mana yang dijalankan? beruntung dengan dart kita bisa menhindari situasi seperti ini dengan mixin.

/// ketika mencampur (mixing) kelas. kelas yang digunakan sebagai mixin tidak pararel namun saling bertumpuk.
/// karena itu urutan menjadi hal yang penting di dalam menerapkan mixin. misal: 

mixin Dancer implements Performer {
  @override
  void perform() {
    print('Dancing');
  }
}
 
mixin Singer implements Performer {
  @override
  void perform() {
    print('Singing');
  }
}
class Musician extends Performer with Dancer, Singer {
 //                                              ^ disini kuncinya, siapa yang paling akhir ditulis dia yang ditampilkan
  void showTime() {
    perform();
  }
}


// Lalu buatlah objek yang akan menjalankan method perform():
void main() {
  var arielNoah = Musician();
  arielNoah.perform();

  // output : Singing

}

// jika dijalankan apakah yang akan tampil pada konsol? Mengapa demikian? Seperti yang telah dijelaskan,
// kelas mixin bersifat stack atau bertumpuk. Kelas-kelas ini berurutan dari yang paling umum hingga paling spesifik. 
// Sehingga sesuai urutan mixin di atas kelas Musician akan menampilkan method dari Singer karena berada di urutan 
// terakhir atau paling spesifik.



/*
=============================================================================
                       PERFORMER CLASS HIERARCHY DIAGRAM
=============================================================================

                       Less                                     More
                     Specific                                 Specific
                        ↑                                        │
                        │                                        │
                        │    ┌─────────────────────────────┐     │
                        │    │        Performer            │     │
                        │    │    (Most General)           │     │
                        │    └─────────────────────────────┘     │
                        │                 │                      │
                        │                 ↓                      │
                        │    ┌─────────────────────────────┐     │
                        │    │         Dancer              │     │
                        │    └─────────────────────────────┘     │
                        │                 │                      │
                        │                 ↓                      │
                        │    ┌─────────────────────────────┐     │
                        │    │         Singer              │     │
                        │    └─────────────────────────────┘     │
                        │                 │                      │
                        │                 ↓                      │
                        │    ┌─────────────────────────────┐     │
                        │    │        Musician             │     │
                        │    │    (Most Specific)          │     │
                        │    └─────────────────────────────┘     │
                        │                                        │
                        │                                        ↓
*/
