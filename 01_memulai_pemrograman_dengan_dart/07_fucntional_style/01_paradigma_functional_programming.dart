// Paradigma Functional Programming
/// Seperti yang sudah disampaikan di awal, Dart adalah bahasa yang mendukung multiparadigm. 
/// Artinya selain merupakan bahasa pemrograman berorientasi objek, penulisan syntax Dart juga menggunakan gaya functional programming.
/// 
/// Functional programming adalah paradigma pemrograman di mana proses komputasi didasarkan pada fungsi matematika murni. 
/// Functional programming (FP) ditulis dengan gaya deklaratif yang berfokus pada “what to solve” dibandingkan “how to solve” pada gaya imperatif.

// Berikut ini beberapa konsep dan karakteristik functional programming:

// PURE FUNCTIONS => fungsi yang bergantung kepada argument atau parameter yang ada didalamnya
// sehingga pemanggilan fungsi dengan nilai argument yang sama akan selalu memnberikan hasil yang sama

// contohnya seperti fungsi dibawah ini, nilai yang dikembalikan bergantung dengan argument yang diberikan

int sum(int num1, int num2) {
  return num1 + num2;
}

// RECURSION  => fungsi yang memanggil dirinya sendrii
// Pada functional programming tidak ada konsep perulangan seperti for atau while.
// Iterasi pada functional programming dilakukan melalui rekursi atau pemanggilan fungsi 
// dari fungsi itu sendiri, hingga mencapai kasus dasar.

// IMMUTABLE VARIABLES
// Variable pada functional progamming bersifat immutable, artinya kita tidak bisa mengubah sebuah variable yang sudah diinisiasi
// Alih-alih mengubah nilai variabel, kita bisa membuat variabel baru untuk menyimpan data. 
// Mekanisme ini bertujuan agar kode kita menjadi lebih aman karena state dari aplikasi tidak akan berubah sepanjang aplikasi berjalan.

// var x = 5;
// x = x + 1; // Contoh variable yang tidak immutable

// FUCNTION are first-class citizen and can be higher-order
// maksud dari function merupakan first-class citizen adalah bahwa function berlaku sama seperti komponen pemrograman yang lain.
// sebuah fungsi bisa dimasukkan ke variabel menjadi parameter dalam suatu fungsi dan juga menjadi nilai kembali pada fungsi.
// higher order function adalah fungsi yang mengambil fungsi lain sebagai argumen dan juga dapat mengembalikan fungsi

// Pada modul ini kita akan mempelajari bagaimana penulisan gaya functional dengan bahasa Dart.