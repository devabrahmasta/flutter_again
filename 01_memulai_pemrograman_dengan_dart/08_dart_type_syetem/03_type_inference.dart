// Type Inference 
/// seperti yang ktia tahu dart mendukung type inference. 
/// Dart memiliki analyzer yang dapat menentukan menyimpulkan tipe untuk field, method, variabel lokal, dan beberapa tipe argumen generic.
/// Ketika analyzer tidak memiliki informasi yang cukup untuk menyipulkan tipe tertentu, maka tipe dynamic akan digunakan

/// misalnya berikut ini adalah contoh penulisan variabel map dengan tipa yang eksplisit:

Map<String, dynamic> company = {'name': 'Dicoding', 'yearsFounded': 2015};

// atau anda dapat menggunakan var dan dart akan menetukan tipenya
var companies = {'name': 'Dicoding', 'yearsFound': 2015};

// type inference menentukan tipe dari entri kemudain menentukan tipe dari variabelnya. 
// pada contoh di atas, kedua key dari map adalah string, namun nilainya amemiliki tipe yang berbeda yaitu String dan int, di mana kedua merupakan turunan dari object. 
// sehingga variabel company akan memiliki tipe Map<String, Object>

// saat menetapkan nilai object ke dalam objek lain, kita bisa mengganti tipenya dengan tipe yang berbeda tergantung pada apakah object tersebut adalah consumer atau produser.
// perhatikan assignment berikut: 

// Fish fish = Fish();

// Fish fish adalah consumer dan Fish() adalah producer.
/// pada posisi consumer, aman untuk mengganti consumer bertipe yang spesifik dengan tipe yang lebih umum.
/// Jadi aman untuk mengganti Fish fish dengan Animal fish karena Animal adalah supertype dari Fish.

// Animal fish = Fish();

/// Namun mengganti Fish fish dengan Shark fish melanggar type safety 
/// karena bisa saja Fish memiliki subtype lain dengan perilaku berbeda, misalnya FlyinFish.

// Shark fish = Fish();  // Error

/// pada posisi producer, aman untuk mengganati tipe yang umum (supertype) dengan tipe yang lebih spesifik (subtype)

void main(){
  Fish fish = Shark();
}

class Animal {}

/// BIRD
class Bird implements Animal {}

class Dove implements Bird {}

class Duck implements Bird {}

// FISH

class Fish implements Animal {}

class Shark implements Fish{}

class FlyingFish implements Fish {}


