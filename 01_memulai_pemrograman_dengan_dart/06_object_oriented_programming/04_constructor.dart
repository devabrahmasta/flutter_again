// Constructor
// ketika property dibaut semua peroperti pada kelas harus memiliki nilai.
// Kita dapat langsung menginisialisasi pada properti tertentu atau menginisialisasinya melalui constructor.

// constructor itu fungsi spesial dari sebuah object yang digunakaan untuk membauat object
// kenapa spesial? 
// 1. Constructor memiliki nama yang sama dengan class
// 2. constructor tidak memiliki return value
// 3. constructor akan otomatis dipanggil ketika sebuah object dibuat
// 4. Jika kita tidak mendefinisikan constructor, default constructor tanpa argumen akan dibuat.

// secara default sebuah constructor pada kelas tidak menerima argumen apapun. 
// dimateri sebelumnya kalian secara tidak langsung belajar constructor
// sebagai contoh pada kelas Animal akan menjadi seperti berikut:
// class Animal {
//   String name = '';
//   int age = 0;
//   double weight = 0;
// }

// untuk membuat Object baru di main, kalian tidak perlu memberikan /nilai
var dicodingCat = Cat();
// karena tidak memasukkan nilai, maka default properti akan digunakan,
// maka kalian harus berhati hati agar properti tidak null  

// untuk memberikan nilai pada properti, silakan akses properti yang ada di dalam sebuah kelas.
// file class:   
class Cat {
  // kelas tanpa constructor
  String name = '';
  int age = 0;
  double weight = 0;
}

// file main 
// import '03b_animal.dart';

void main() {
  var dicodingCat = Cat();

  dicodingCat.name = 'Gray';
  dicodingCat.age = 2;
  dicodingCat.weight = 4.2;
}

// dengan constructor kita bisa menginisialisasi bahkan menjalankan instruksi tertentu ketika kita membuat object
class Animal{
  String name = '';        // this.name mengacu kesini
  int age = 0;             // this.age mengacu kesini
  double weight = 0;       // this.weight mengacu kesini
 
  Animal.full(String name, int age, double weight) {
    this.name = name;
    this.age = age;           // keyword this disini merujuk kepada attribute 
    this.weight = weight;
  }

  // keyword this digunakan untuk menghindari ambiguitas antara atribut class dan parameter:
  String nama = '';
  
  Animal.nameOnly(String nama) {
    nama = nama;  // AMBIGUOUS! Dart bingung
    // Apakah: parameter name = parameter name? (ga ada gunanya)
    // Atau: property name = parameter name? (yang kita mau)
  }

  // jika constructor hanya digunakan untuk menginisialisasi nilai properti, maka bisa disingkat :
  Animal.shorter(this.name, this.age, this.weight);



// Named Constructor 
// dengan menggunakan nameed constructor kita dapat membuat beberapa constructor dalam class yang sama

// class Animal{
//   String name = '';
//   int age = 0;
//   Animal(this.name);      
//   Animal(this.age);    => kita gabisa buat seperti ini, 
// }

// contohnya di atas juga menggunakan (.full) atau (.shorter)  nah ini merupakan slaah satu penggunaan named constructor 
// formatnya :
// class_name.constructor_name (arguments){
//  // Statements


  // Berikut beberapa contoh untuk mendeklarasikan
  // Named Constructor.
  Animal.name(this.name);
  Animal.age(this.age);
  Animal.weight(this.weight);
}
// Initializer List
// terkadang kita ingin mendeklarasikan salah satu properti class dengan nilai default.
// itu dapat dilakukan dengan kita mendeklarasikan di dalam constructor body

// class Animal {
//   // ...
// 
//   Animal.cat(this.name, this.weight) {
//     age = 2;
//   }
// }

// namun cara ini masih kurang tepat karena variable age harusnya didefinisikan sebelum constructor body.
// ita bisa memanfaatkan initializer list dengan mendeklarasikan properti kelas sebelum constructor body berjalan.

class Hewan {
  String name = '';        
  int age = 0;             
  double weight = 0;   
 
  Hewan.cat(this.name, this.weight) : age = 2 {
    // write your code here.
  }
  
}
