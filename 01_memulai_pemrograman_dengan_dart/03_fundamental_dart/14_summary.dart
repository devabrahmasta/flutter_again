// Rangkuman Materi
// Selamat! Anda telah mempelajari hal-hal fundamental dalam pemrograman. Sebelum Anda lanjut ke sub-modul berikutnya, berikut adalah beberapa rangkuman dari sub-modul yang sudah dipelajari:

// Comments untuk menuliskan komentar atau penjelasan terhadap kode yang ditulis.
// Terdapat tiga jenis komentar yang tersedia pada Dart:
// Single-line comment atau komentar satu baris yang diawali dengan tanda // dan berakhir pada akhir baris.
// Multi-line comment di mana kita bisa menuliskan beberapa baris komentar yang diawali dengan tanda /* dan diakhiri dengan */.
// Documentation comment adalah kombinasi single-line dan multi-line yang diawali dengan /// atau /** dan diakhiri dengan /// atau **/.
// Instruksi atau perintah kode yang diawali dengan comment akan dilewati ketika proses kompilasi, sehingga tidak akan memengaruhi alur program yang ditulis.
// Variabel digunakan untuk menyimpan nilai. Kita bisa definisikan variabel secara implisit menggunakan keyword var. 
// Dart mendukung banyak tipe data yang bisa digunakan. Jenis tipe data yang didukung oleh Dart, antara lain:
// int, tipe data yang dapat menampung bilangan bulat.
// double, tipe data yang dapat menampung bilangan desimal.
// num, tipe data yang dapat menampung bilangan bulat (int) dan bilangan desimal (double).
// bool, tipe data yang hanya memiliki dua nilai, yaitu true dan false.
// String, tipe data yang dapat menyimpan teks yang terdiri dari 0 atau beberapa karakter.
// Collection, tipe data yang dapat menyimpan beberapa objek dalam satu variabel.
// dynamic, tipe data yang dapat menyimpan tipe data apapun.
// Kita dapat menggabungkan pernyataan boolean atau membaliknya dengan operator logika. Terdapat 3 (tiga) operator logika yang bisa digunakan, meliputi:
// Operator OR (||), operator yang akan mengembalikan nilai true jika salah satu ekspresi bernilai true.
// Operator AND (&&), operator yang akan mengembalikan nilai true jika semua ekspresi bernilai true.
// Operator NOT (!), operator yang melakukan negasi pada ekspresi yang diberikan.
// Function digunakan sebagai mini program atau blok kode yang dapat menghasilkan output dari input tertentu.
// Variabel konstan (const dan final) berguna untuk menyimpan nilai yang tidak akan berubah selama program berjalan.
// Variabel dengan keyword const bersifat compile-time constants, artinya nilai tersebut harus sudah diketahui sebelum program dijalankan.
// Variabel dengan keyword final memiliki sifat di mana nilainya masih bisa diinisialisasi ketika aplikasi berjalan.
// Fitur null safety dari Dart membantu membatasi penggunaan nilai null yang rawan menyebabkan crash pada aplikasi jika tidak ditangani dengan baik.

  void main(){
    print(product(5,7));
  }

  num product(int a, double b){
    return a * b;
  }