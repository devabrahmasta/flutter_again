// Geeneric

// jika anda perhatika pada dokumentasi collection seperti list, sebenernya tipe dari list tersebut adalaah
// list<E>. tanda <...> ini menunmjukkan bahwa list adalah tipe generic, tipe yang memiliki tipe parameter.
// menurut coding convetion di dart, tipe parameter dilambangkan dengan satu huruf kapital seperti E, T, K, atau V

/// Secara umum generic merupakan konsep yang digunakan untuk menentukan tipe data yang akan kita gunakan. 
/// Kita bisa mengganti tipe parameter generic pada Dart dengan tipe yang lebih spesifik dengan menentukan instance dari tipe tersebut.

// Sebagai contoh, perhatikan List yang menyimpan beberapa nilai berikut:

List<int> numberlist = [1, 2, 3, 4, 5];

/// Tipe parameter yang digunakan pada variabel list di atas adalah int, maka nilai yang bisa kita masukkan adalah nilai
/// dengan tipe int. Begitu juga jika kita menentukan tipe parameter string, maka tipe yang bisa kita masukkan ke dalam list hanya berupa String.

List<int> numberList = [1, 2, 3, 4, 5];
List<String> stringList = ['Dart', 'Flutter', 'Android', 'IOS'];
List dynamicList = [1, 2, 3, 'empat']; // List<dynamic>

/// berbeda jika kita tidak menentukan tipe parameter dari list. List tersebut tidak emiliki tipe yang menjadi acuan bagi kompiler sehingga semua tipe bisa disimpat ke dalam list.
/// variabel dynamicList di atas sebenarnya masih menerapkan generic dengan tipe dynamic sehigga tipenya menjadi List<dynamic>.

/// dari kasus di atas kita bisa simpulkan bahwa dart membantu kita menghasilkan kode yang type safe dengan membatasi tipe yang bisa digunakan 
/// ke dalam suatu objek dan menghindari bug. selain itu generic juga bermanfaat mengurangi duplikasi kode.
/// misalnya ketika anda perlu untuk menyimpan objek chace bertipe String dan int. Alih-alih membuat dua objek StringCache dan intCache, anda bisa membuat
/// satu objek saja dengan memanfaatkan tipe parameter dari generic

abstract class Cache<T> {
      T getByKey(String key);
      void setByKey(String key, T value);
}

/// Dengan Dart type system kita bisa mengganti tipe parameter yang digunakan sesuai dengan susunan hierarkinya. 
/// Perhtikan hierarki objek Animal berikut:

/* 
 =============================================================================
                        ANIMAL CLASS HIERARCHY DIAGRAM
=============================================================================
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
  └─────────┘ └─────────┘ └─────────┘ └─────────┘ └─────────┘ └─────────┘ └─────────┘
*/

/// Dengan hierarki di atas, jika kita memiliki objek List<Bird>
/// maka objek apa saja yang bisa kita masukkan ke list tersebut?

void main(){
      List<Bird> birdList = [Bird(), Dove(), Duck()];
}

class Animal{
}

class Bird implements Animal {}

class Dove implements Bird {}

class Duck implements Bird {}


/// seluruh objek Bird atau objek turunannya bisa masuk ke dalam birdList. 
/// Namun, ketika menambahkan objek dari Animal, terjadi compile error karena objek Animal belum tentu merupakan objek Bird.

// List<Bird> birdList = [Bird(), Dove(), Duck(), Animal()];  // Error

/// berbeda jika kita mengisi List<Bird> dengan List<Animal> seperti berikut: 

// List<Bird> myBird = List<Animal>();

/// Kompiler tidak akan menunjukkan eror namun ketika kode dijalankan akan terjadi runtime error karena List<Animal> bukanlah subtype dari List<Bird>.

/// Unhandled exception:
// type 'List<Animal>' is not a subtype of type 'List<Bird>'